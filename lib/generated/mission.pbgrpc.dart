///
//  Generated code. Do not modify.
//  source: mission.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'mission.pb.dart' as $0;
export 'mission.pb.dart';

class MissionProtoServiceClient extends $grpc.Client {
  static final _$getMission =
      $grpc.ClientMethod<$0.GetMissionModelRequest, $0.GetMissionModelResponse>(
          '/MissionProtoService/GetMission',
          ($0.GetMissionModelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetMissionModelResponse.fromBuffer(value));
  static final _$createMission =
      $grpc.ClientMethod<$0.CreateMissionRquest, $0.MissionModel>(
          '/MissionProtoService/CreateMission',
          ($0.CreateMissionRquest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.MissionModel.fromBuffer(value));

  MissionProtoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetMissionModelResponse> getMission(
      $0.GetMissionModelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMission, request, options: options);
  }

  $grpc.ResponseFuture<$0.MissionModel> createMission(
      $0.CreateMissionRquest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createMission, request, options: options);
  }
}

abstract class MissionProtoServiceBase extends $grpc.Service {
  $core.String get $name => 'MissionProtoService';

  MissionProtoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetMissionModelRequest,
            $0.GetMissionModelResponse>(
        'GetMission',
        getMission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetMissionModelRequest.fromBuffer(value),
        ($0.GetMissionModelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateMissionRquest, $0.MissionModel>(
        'CreateMission',
        createMission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateMissionRquest.fromBuffer(value),
        ($0.MissionModel value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetMissionModelResponse> getMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetMissionModelRequest> request) async {
    return getMission(call, await request);
  }

  $async.Future<$0.MissionModel> createMission_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateMissionRquest> request) async {
    return createMission(call, await request);
  }

  $async.Future<$0.GetMissionModelResponse> getMission(
      $grpc.ServiceCall call, $0.GetMissionModelRequest request);
  $async.Future<$0.MissionModel> createMission(
      $grpc.ServiceCall call, $0.CreateMissionRquest request);
}
