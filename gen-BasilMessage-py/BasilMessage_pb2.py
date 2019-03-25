# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: BasilMessage.proto

import sys
_b=sys.version_info[0]<3 and (lambda x:x) or (lambda x:x.encode('latin1'))
from google.protobuf.internal import enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


import BasilTypes_pb2 as BasilTypes__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='BasilMessage.proto',
  package='BasilMessage',
  syntax='proto3',
  serialized_options=_b('\252\002#org.herbal3d.basil.protocol.Message'),
  serialized_pb=_b('\n\x12\x42\x61silMessage.proto\x12\x0c\x42\x61silMessage\x1a\x10\x42\x61silTypes.proto\"\xb6\x05\n\x0c\x42\x61silMessage\x12\n\n\x02op\x18\x01 \x01(\x05\x12,\n\x04\x61uth\x18\x02 \x01(\x0b\x32\x1e.BasilType.AccessAuthorization\x12+\n\x05\x63lass\x18\x0e \x01(\x0e\x32\x1c.BasilMessage.TransportClass\x12-\n\x08objectId\x18\x03 \x01(\x0b\x32\x1b.BasilType.ObjectIdentifier\x12\x31\n\ninstanceId\x18\x04 \x01(\x0b\x32\x1d.BasilType.InstanceIdentifier\x12,\n\x03pos\x18\x05 \x01(\x0b\x32\x1f.BasilType.InstancePositionInfo\x12.\n\tassetInfo\x18\x06 \x01(\x0b\x32\x1b.BasilType.AssetInformation\x12&\n\x04\x61\x61\x62\x62\x18\x07 \x01(\x0b\x32\x18.BasilType.AaBoundingBox\x12\x0e\n\x06\x66ilter\x18\x08 \x01(\t\x12>\n\nproperties\x18\t \x03(\x0b\x32*.BasilMessage.BasilMessage.PropertiesEntry\x12\x42\n\x0copParameters\x18\n \x03(\x0b\x32,.BasilMessage.BasilMessage.OpParametersEntry\x12,\n\texception\x18\x0b \x01(\x0b\x32\x19.BasilType.BasilException\x12-\n\x08response\x18\r \x01(\x0b\x32\x1b.BasilType.BResponseRequest\x1a\x31\n\x0fPropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x33\n\x11OpParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01*_\n\x0eTransportClass\x12\x0b\n\x07\x44\x65\x66\x61ult\x10\x00\x12\x10\n\x0cHighPriority\x10\n\x12\x0f\n\x0bMedPriority\x10\x14\x12\x0f\n\x0bLowPriority\x10\x1e\x12\x0c\n\x08\x42\x65stCase\x10(*\xc9\x06\n\x0f\x42\x61silMessageOps\x12\x0e\n\nUnknownReq\x10\x00\x12!\n\x1cIdentifyDisplayableObjectReq\x10\x81 \x12\"\n\x1dIdentifyDisplayableObjectResp\x10\x82 \x12\x1f\n\x1a\x46orgetDisplayableObjectReq\x10\x83 \x12 \n\x1b\x46orgetDisplayableObjectResp\x10\x84 \x12\x1c\n\x17\x43reateObjectInstanceReq\x10\x85 \x12\x1d\n\x18\x43reateObjectInstanceResp\x10\x86 \x12\x1c\n\x17\x44\x65leteObjectInstanceReq\x10\x87 \x12\x1d\n\x18\x44\x65leteObjectInstanceResp\x10\x88 \x12\x1c\n\x17UpdateObjectPropertyReq\x10\x89 \x12\x1d\n\x18UpdateObjectPropertyResp\x10\x8a \x12\x1e\n\x19UpdateInstancePropertyReq\x10\x8b \x12\x1f\n\x1aUpdateInstancePropertyResp\x10\x8c \x12\x1e\n\x19UpdateInstancePositionReq\x10\x8d \x12\x1f\n\x1aUpdateInstancePositionResp\x10\x8e \x12\x1f\n\x1aRequestObjectPropertiesReq\x10\x8f \x12 \n\x1bRequestObjectPropertiesResp\x10\x90 \x12!\n\x1cRequestInstancePropertiesReq\x10\x91 \x12\"\n\x1dRequestInstancePropertiesResp\x10\x92 \x12\x14\n\x0f\x43loseSessionReq\x10\x93 \x12\x15\n\x10\x43loseSessionResp\x10\x94 \x12\x16\n\x11MakeConnectionReq\x10\x95 \x12\x17\n\x12MakeConnectionResp\x10\x96 \x12\x12\n\rAliveCheckReq\x10\x81@\x12\x13\n\x0e\x41liveCheckResp\x10\x82@\x12\x13\n\x0eOpenSessionReq\x10\x81`\x12\x14\n\x0fOpenSessionResp\x10\x82`\x12\x12\n\rCameraViewReq\x10\x83`\x12\x13\n\x0e\x43\x61meraViewResp\x10\x84`B&\xaa\x02#org.herbal3d.basil.protocol.Messageb\x06proto3')
  ,
  dependencies=[BasilTypes__pb2.DESCRIPTOR,])

_TRANSPORTCLASS = _descriptor.EnumDescriptor(
  name='TransportClass',
  full_name='BasilMessage.TransportClass',
  filename=None,
  file=DESCRIPTOR,
  values=[
    _descriptor.EnumValueDescriptor(
      name='Default', index=0, number=0,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='HighPriority', index=1, number=10,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='MedPriority', index=2, number=20,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='LowPriority', index=3, number=30,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='BestCase', index=4, number=40,
      serialized_options=None,
      type=None),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=751,
  serialized_end=846,
)
_sym_db.RegisterEnumDescriptor(_TRANSPORTCLASS)

TransportClass = enum_type_wrapper.EnumTypeWrapper(_TRANSPORTCLASS)
_BASILMESSAGEOPS = _descriptor.EnumDescriptor(
  name='BasilMessageOps',
  full_name='BasilMessage.BasilMessageOps',
  filename=None,
  file=DESCRIPTOR,
  values=[
    _descriptor.EnumValueDescriptor(
      name='UnknownReq', index=0, number=0,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='IdentifyDisplayableObjectReq', index=1, number=4097,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='IdentifyDisplayableObjectResp', index=2, number=4098,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='ForgetDisplayableObjectReq', index=3, number=4099,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='ForgetDisplayableObjectResp', index=4, number=4100,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CreateObjectInstanceReq', index=5, number=4101,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CreateObjectInstanceResp', index=6, number=4102,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='DeleteObjectInstanceReq', index=7, number=4103,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='DeleteObjectInstanceResp', index=8, number=4104,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateObjectPropertyReq', index=9, number=4105,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateObjectPropertyResp', index=10, number=4106,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateInstancePropertyReq', index=11, number=4107,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateInstancePropertyResp', index=12, number=4108,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateInstancePositionReq', index=13, number=4109,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='UpdateInstancePositionResp', index=14, number=4110,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='RequestObjectPropertiesReq', index=15, number=4111,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='RequestObjectPropertiesResp', index=16, number=4112,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='RequestInstancePropertiesReq', index=17, number=4113,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='RequestInstancePropertiesResp', index=18, number=4114,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CloseSessionReq', index=19, number=4115,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CloseSessionResp', index=20, number=4116,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='MakeConnectionReq', index=21, number=4117,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='MakeConnectionResp', index=22, number=4118,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='AliveCheckReq', index=23, number=8193,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='AliveCheckResp', index=24, number=8194,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='OpenSessionReq', index=25, number=12289,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='OpenSessionResp', index=26, number=12290,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CameraViewReq', index=27, number=12291,
      serialized_options=None,
      type=None),
    _descriptor.EnumValueDescriptor(
      name='CameraViewResp', index=28, number=12292,
      serialized_options=None,
      type=None),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=849,
  serialized_end=1690,
)
_sym_db.RegisterEnumDescriptor(_BASILMESSAGEOPS)

BasilMessageOps = enum_type_wrapper.EnumTypeWrapper(_BASILMESSAGEOPS)
Default = 0
HighPriority = 10
MedPriority = 20
LowPriority = 30
BestCase = 40
UnknownReq = 0
IdentifyDisplayableObjectReq = 4097
IdentifyDisplayableObjectResp = 4098
ForgetDisplayableObjectReq = 4099
ForgetDisplayableObjectResp = 4100
CreateObjectInstanceReq = 4101
CreateObjectInstanceResp = 4102
DeleteObjectInstanceReq = 4103
DeleteObjectInstanceResp = 4104
UpdateObjectPropertyReq = 4105
UpdateObjectPropertyResp = 4106
UpdateInstancePropertyReq = 4107
UpdateInstancePropertyResp = 4108
UpdateInstancePositionReq = 4109
UpdateInstancePositionResp = 4110
RequestObjectPropertiesReq = 4111
RequestObjectPropertiesResp = 4112
RequestInstancePropertiesReq = 4113
RequestInstancePropertiesResp = 4114
CloseSessionReq = 4115
CloseSessionResp = 4116
MakeConnectionReq = 4117
MakeConnectionResp = 4118
AliveCheckReq = 8193
AliveCheckResp = 8194
OpenSessionReq = 12289
OpenSessionResp = 12290
CameraViewReq = 12291
CameraViewResp = 12292



_BASILMESSAGE_PROPERTIESENTRY = _descriptor.Descriptor(
  name='PropertiesEntry',
  full_name='BasilMessage.BasilMessage.PropertiesEntry',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='BasilMessage.BasilMessage.PropertiesEntry.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='value', full_name='BasilMessage.BasilMessage.PropertiesEntry.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=_b('8\001'),
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=647,
  serialized_end=696,
)

_BASILMESSAGE_OPPARAMETERSENTRY = _descriptor.Descriptor(
  name='OpParametersEntry',
  full_name='BasilMessage.BasilMessage.OpParametersEntry',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='key', full_name='BasilMessage.BasilMessage.OpParametersEntry.key', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='value', full_name='BasilMessage.BasilMessage.OpParametersEntry.value', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=_b('8\001'),
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=698,
  serialized_end=749,
)

_BASILMESSAGE = _descriptor.Descriptor(
  name='BasilMessage',
  full_name='BasilMessage.BasilMessage',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  fields=[
    _descriptor.FieldDescriptor(
      name='op', full_name='BasilMessage.BasilMessage.op', index=0,
      number=1, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='auth', full_name='BasilMessage.BasilMessage.auth', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='class', full_name='BasilMessage.BasilMessage.class', index=2,
      number=14, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='objectId', full_name='BasilMessage.BasilMessage.objectId', index=3,
      number=3, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='instanceId', full_name='BasilMessage.BasilMessage.instanceId', index=4,
      number=4, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='pos', full_name='BasilMessage.BasilMessage.pos', index=5,
      number=5, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='assetInfo', full_name='BasilMessage.BasilMessage.assetInfo', index=6,
      number=6, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='aabb', full_name='BasilMessage.BasilMessage.aabb', index=7,
      number=7, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='filter', full_name='BasilMessage.BasilMessage.filter', index=8,
      number=8, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=_b("").decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='properties', full_name='BasilMessage.BasilMessage.properties', index=9,
      number=9, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='opParameters', full_name='BasilMessage.BasilMessage.opParameters', index=10,
      number=10, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='exception', full_name='BasilMessage.BasilMessage.exception', index=11,
      number=11, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
    _descriptor.FieldDescriptor(
      name='response', full_name='BasilMessage.BasilMessage.response', index=12,
      number=13, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR),
  ],
  extensions=[
  ],
  nested_types=[_BASILMESSAGE_PROPERTIESENTRY, _BASILMESSAGE_OPPARAMETERSENTRY, ],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=55,
  serialized_end=749,
)

_BASILMESSAGE_PROPERTIESENTRY.containing_type = _BASILMESSAGE
_BASILMESSAGE_OPPARAMETERSENTRY.containing_type = _BASILMESSAGE
_BASILMESSAGE.fields_by_name['auth'].message_type = BasilTypes__pb2._ACCESSAUTHORIZATION
_BASILMESSAGE.fields_by_name['class'].enum_type = _TRANSPORTCLASS
_BASILMESSAGE.fields_by_name['objectId'].message_type = BasilTypes__pb2._OBJECTIDENTIFIER
_BASILMESSAGE.fields_by_name['instanceId'].message_type = BasilTypes__pb2._INSTANCEIDENTIFIER
_BASILMESSAGE.fields_by_name['pos'].message_type = BasilTypes__pb2._INSTANCEPOSITIONINFO
_BASILMESSAGE.fields_by_name['assetInfo'].message_type = BasilTypes__pb2._ASSETINFORMATION
_BASILMESSAGE.fields_by_name['aabb'].message_type = BasilTypes__pb2._AABOUNDINGBOX
_BASILMESSAGE.fields_by_name['properties'].message_type = _BASILMESSAGE_PROPERTIESENTRY
_BASILMESSAGE.fields_by_name['opParameters'].message_type = _BASILMESSAGE_OPPARAMETERSENTRY
_BASILMESSAGE.fields_by_name['exception'].message_type = BasilTypes__pb2._BASILEXCEPTION
_BASILMESSAGE.fields_by_name['response'].message_type = BasilTypes__pb2._BRESPONSEREQUEST
DESCRIPTOR.message_types_by_name['BasilMessage'] = _BASILMESSAGE
DESCRIPTOR.enum_types_by_name['TransportClass'] = _TRANSPORTCLASS
DESCRIPTOR.enum_types_by_name['BasilMessageOps'] = _BASILMESSAGEOPS
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

BasilMessage = _reflection.GeneratedProtocolMessageType('BasilMessage', (_message.Message,), {

  'PropertiesEntry' : _reflection.GeneratedProtocolMessageType('PropertiesEntry', (_message.Message,), {
    'DESCRIPTOR' : _BASILMESSAGE_PROPERTIESENTRY,
    '__module__' : 'BasilMessage_pb2'
    # @@protoc_insertion_point(class_scope:BasilMessage.BasilMessage.PropertiesEntry)
    })
  ,

  'OpParametersEntry' : _reflection.GeneratedProtocolMessageType('OpParametersEntry', (_message.Message,), {
    'DESCRIPTOR' : _BASILMESSAGE_OPPARAMETERSENTRY,
    '__module__' : 'BasilMessage_pb2'
    # @@protoc_insertion_point(class_scope:BasilMessage.BasilMessage.OpParametersEntry)
    })
  ,
  'DESCRIPTOR' : _BASILMESSAGE,
  '__module__' : 'BasilMessage_pb2'
  # @@protoc_insertion_point(class_scope:BasilMessage.BasilMessage)
  })
_sym_db.RegisterMessage(BasilMessage)
_sym_db.RegisterMessage(BasilMessage.PropertiesEntry)
_sym_db.RegisterMessage(BasilMessage.OpParametersEntry)


DESCRIPTOR._options = None
_BASILMESSAGE_PROPERTIESENTRY._options = None
_BASILMESSAGE_OPPARAMETERSENTRY._options = None
# @@protoc_insertion_point(module_scope)
