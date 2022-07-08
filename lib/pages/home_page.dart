import '../generated/mission.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final channel = ClientChannel(
    '10.0.2.2',
    port: 5025,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  @override
  void initState() {
    super.initState();
    client = MissionProtoServiceClient(channel);
    getAll();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    channel.shutdown();
  }

  MissionProtoServiceClient? client;
  GetMissionModelResponse? response;
  Future getAll() async {
    try {
      response = await client!.getMission(
        GetMissionModelRequest(),
        options: CallOptions(compression: const GzipCodec()),
      );
      setState(() {});
    } catch (e) {
      print('Caught error: $e');
    }
  }

  Future add() async {
    try {
      CreateMissionRquest request =
          CreateMissionRquest(mission: MissionModel(title: controller.text));
      var data = await client!.createMission(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );
      setState(() {});
    } catch (e) {
      print('Caught error: $e');
    }
    controller.clear();
    getAll();
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Text(
          "ToDo",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        bottom: PreferredSize(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "I will...",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        add();
                      },
                      icon: Icon(
                        Icons.add_task,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
        ),
        leading: Icon(
          Icons.task,
          color: Theme.of(context).primaryColor,
          size: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {
              getAll();
            },
            color: Theme.of(context).primaryColor,
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: response != null && response!.mission.isNotEmpty
          ? ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children: response!.mission
                  .map(
                    (mission) => ListTile(
                      leading: Icon(Icons.task_alt_outlined),
                      title: Text("${mission.title}"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
