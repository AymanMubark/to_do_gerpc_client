///
//  Generated code. Do not modify.
//  source: mission.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetMissionModelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMissionModelRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetMissionModelRequest._() : super();
  factory GetMissionModelRequest() => create();
  factory GetMissionModelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMissionModelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMissionModelRequest clone() => GetMissionModelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMissionModelRequest copyWith(void Function(GetMissionModelRequest) updates) => super.copyWith((message) => updates(message as GetMissionModelRequest)) as GetMissionModelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMissionModelRequest create() => GetMissionModelRequest._();
  GetMissionModelRequest createEmptyInstance() => create();
  static $pb.PbList<GetMissionModelRequest> createRepeated() => $pb.PbList<GetMissionModelRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMissionModelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMissionModelRequest>(create);
  static GetMissionModelRequest? _defaultInstance;
}

class GetMissionModelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMissionModelResponse', createEmptyInstance: create)
    ..pc<MissionModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mission', $pb.PbFieldType.PM, subBuilder: MissionModel.create)
    ..hasRequiredFields = false
  ;

  GetMissionModelResponse._() : super();
  factory GetMissionModelResponse({
    $core.Iterable<MissionModel>? mission,
  }) {
    final _result = create();
    if (mission != null) {
      _result.mission.addAll(mission);
    }
    return _result;
  }
  factory GetMissionModelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMissionModelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMissionModelResponse clone() => GetMissionModelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMissionModelResponse copyWith(void Function(GetMissionModelResponse) updates) => super.copyWith((message) => updates(message as GetMissionModelResponse)) as GetMissionModelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMissionModelResponse create() => GetMissionModelResponse._();
  GetMissionModelResponse createEmptyInstance() => create();
  static $pb.PbList<GetMissionModelResponse> createRepeated() => $pb.PbList<GetMissionModelResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMissionModelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMissionModelResponse>(create);
  static GetMissionModelResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MissionModel> get mission => $_getList(0);
}

class CreateMissionRquest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateMissionRquest', createEmptyInstance: create)
    ..aOM<MissionModel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mission', subBuilder: MissionModel.create)
    ..hasRequiredFields = false
  ;

  CreateMissionRquest._() : super();
  factory CreateMissionRquest({
    MissionModel? mission,
  }) {
    final _result = create();
    if (mission != null) {
      _result.mission = mission;
    }
    return _result;
  }
  factory CreateMissionRquest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateMissionRquest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateMissionRquest clone() => CreateMissionRquest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateMissionRquest copyWith(void Function(CreateMissionRquest) updates) => super.copyWith((message) => updates(message as CreateMissionRquest)) as CreateMissionRquest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateMissionRquest create() => CreateMissionRquest._();
  CreateMissionRquest createEmptyInstance() => create();
  static $pb.PbList<CreateMissionRquest> createRepeated() => $pb.PbList<CreateMissionRquest>();
  @$core.pragma('dart2js:noInline')
  static CreateMissionRquest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateMissionRquest>(create);
  static CreateMissionRquest? _defaultInstance;

  @$pb.TagNumber(1)
  MissionModel get mission => $_getN(0);
  @$pb.TagNumber(1)
  set mission(MissionModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMission() => $_has(0);
  @$pb.TagNumber(1)
  void clearMission() => clearField(1);
  @$pb.TagNumber(1)
  MissionModel ensureMission() => $_ensure(0);
}

class MissionModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MissionModel', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', $pb.PbFieldType.O3, protoName: 'Id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Title', protoName: 'Title')
    ..hasRequiredFields = false
  ;

  MissionModel._() : super();
  factory MissionModel({
    $core.int? id,
    $core.String? title,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory MissionModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MissionModel clone() => MissionModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MissionModel copyWith(void Function(MissionModel) updates) => super.copyWith((message) => updates(message as MissionModel)) as MissionModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionModel create() => MissionModel._();
  MissionModel createEmptyInstance() => create();
  static $pb.PbList<MissionModel> createRepeated() => $pb.PbList<MissionModel>();
  @$core.pragma('dart2js:noInline')
  static MissionModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionModel>(create);
  static MissionModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

