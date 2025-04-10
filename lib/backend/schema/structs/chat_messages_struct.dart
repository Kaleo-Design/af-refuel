// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesStruct extends BaseStruct {
  ChatMessagesStruct({
    ChatMessageTypes? sender,
    DateTime? sentAt,
    String? content,
    String? image,
    String? audioFile,
    String? senderUid,
    ContentType? type,
    ChatResponseType? responseType,
  })  : _sender = sender,
        _sentAt = sentAt,
        _content = content,
        _image = image,
        _audioFile = audioFile,
        _senderUid = senderUid,
        _type = type,
        _responseType = responseType;

  // "sender" field.
  ChatMessageTypes? _sender;
  ChatMessageTypes? get sender => _sender;
  set sender(ChatMessageTypes? val) => _sender = val;

  bool hasSender() => _sender != null;

  // "sent_at" field.
  DateTime? _sentAt;
  DateTime? get sentAt => _sentAt;
  set sentAt(DateTime? val) => _sentAt = val;

  bool hasSentAt() => _sentAt != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "audio_file" field.
  String? _audioFile;
  String get audioFile => _audioFile ?? '';
  set audioFile(String? val) => _audioFile = val;

  bool hasAudioFile() => _audioFile != null;

  // "sender_uid" field.
  String? _senderUid;
  String get senderUid => _senderUid ?? '';
  set senderUid(String? val) => _senderUid = val;

  bool hasSenderUid() => _senderUid != null;

  // "type" field.
  ContentType? _type;
  ContentType? get type => _type;
  set type(ContentType? val) => _type = val;

  bool hasType() => _type != null;

  // "response_type" field.
  ChatResponseType? _responseType;
  ChatResponseType? get responseType => _responseType;
  set responseType(ChatResponseType? val) => _responseType = val;

  bool hasResponseType() => _responseType != null;

  static ChatMessagesStruct fromMap(Map<String, dynamic> data) =>
      ChatMessagesStruct(
        sender: data['sender'] is ChatMessageTypes
            ? data['sender']
            : deserializeEnum<ChatMessageTypes>(data['sender']),
        sentAt: data['sent_at'] as DateTime?,
        content: data['content'] as String?,
        image: data['image'] as String?,
        audioFile: data['audio_file'] as String?,
        senderUid: data['sender_uid'] as String?,
        type: data['type'] is ContentType
            ? data['type']
            : deserializeEnum<ContentType>(data['type']),
        responseType: data['response_type'] is ChatResponseType
            ? data['response_type']
            : deserializeEnum<ChatResponseType>(data['response_type']),
      );

  static ChatMessagesStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sender': _sender?.serialize(),
        'sent_at': _sentAt,
        'content': _content,
        'image': _image,
        'audio_file': _audioFile,
        'sender_uid': _senderUid,
        'type': _type?.serialize(),
        'response_type': _responseType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sender': serializeParam(
          _sender,
          ParamType.Enum,
        ),
        'sent_at': serializeParam(
          _sentAt,
          ParamType.DateTime,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'audio_file': serializeParam(
          _audioFile,
          ParamType.String,
        ),
        'sender_uid': serializeParam(
          _senderUid,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'response_type': serializeParam(
          _responseType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static ChatMessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessagesStruct(
        sender: deserializeParam<ChatMessageTypes>(
          data['sender'],
          ParamType.Enum,
          false,
        ),
        sentAt: deserializeParam(
          data['sent_at'],
          ParamType.DateTime,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        audioFile: deserializeParam(
          data['audio_file'],
          ParamType.String,
          false,
        ),
        senderUid: deserializeParam(
          data['sender_uid'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<ContentType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        responseType: deserializeParam<ChatResponseType>(
          data['response_type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'ChatMessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessagesStruct &&
        sender == other.sender &&
        sentAt == other.sentAt &&
        content == other.content &&
        image == other.image &&
        audioFile == other.audioFile &&
        senderUid == other.senderUid &&
        type == other.type &&
        responseType == other.responseType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sender,
        sentAt,
        content,
        image,
        audioFile,
        senderUid,
        type,
        responseType
      ]);
}

ChatMessagesStruct createChatMessagesStruct({
  ChatMessageTypes? sender,
  DateTime? sentAt,
  String? content,
  String? image,
  String? audioFile,
  String? senderUid,
  ContentType? type,
  ChatResponseType? responseType,
}) =>
    ChatMessagesStruct(
      sender: sender,
      sentAt: sentAt,
      content: content,
      image: image,
      audioFile: audioFile,
      senderUid: senderUid,
      type: type,
      responseType: responseType,
    );
