// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatThreadStruct extends BaseStruct {
  ChatThreadStruct({
    String? title,
    String? lastMessageContent,
    String? lastMessageSentBy,
    DateTime? lastMessageSent,
    DateTime? createdAt,
  })  : _title = title,
        _lastMessageContent = lastMessageContent,
        _lastMessageSentBy = lastMessageSentBy,
        _lastMessageSent = lastMessageSent,
        _createdAt = createdAt;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "last_message_content" field.
  String? _lastMessageContent;
  String get lastMessageContent => _lastMessageContent ?? '';
  set lastMessageContent(String? val) => _lastMessageContent = val;

  bool hasLastMessageContent() => _lastMessageContent != null;

  // "last_message_sent_by" field.
  String? _lastMessageSentBy;
  String get lastMessageSentBy => _lastMessageSentBy ?? '';
  set lastMessageSentBy(String? val) => _lastMessageSentBy = val;

  bool hasLastMessageSentBy() => _lastMessageSentBy != null;

  // "last_message_sent" field.
  DateTime? _lastMessageSent;
  DateTime? get lastMessageSent => _lastMessageSent;
  set lastMessageSent(DateTime? val) => _lastMessageSent = val;

  bool hasLastMessageSent() => _lastMessageSent != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static ChatThreadStruct fromMap(Map<String, dynamic> data) =>
      ChatThreadStruct(
        title: data['title'] as String?,
        lastMessageContent: data['last_message_content'] as String?,
        lastMessageSentBy: data['last_message_sent_by'] as String?,
        lastMessageSent: data['last_message_sent'] as DateTime?,
        createdAt: data['created_at'] as DateTime?,
      );

  static ChatThreadStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatThreadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'last_message_content': _lastMessageContent,
        'last_message_sent_by': _lastMessageSentBy,
        'last_message_sent': _lastMessageSent,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'last_message_content': serializeParam(
          _lastMessageContent,
          ParamType.String,
        ),
        'last_message_sent_by': serializeParam(
          _lastMessageSentBy,
          ParamType.String,
        ),
        'last_message_sent': serializeParam(
          _lastMessageSent,
          ParamType.DateTime,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ChatThreadStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatThreadStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        lastMessageContent: deserializeParam(
          data['last_message_content'],
          ParamType.String,
          false,
        ),
        lastMessageSentBy: deserializeParam(
          data['last_message_sent_by'],
          ParamType.String,
          false,
        ),
        lastMessageSent: deserializeParam(
          data['last_message_sent'],
          ParamType.DateTime,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ChatThreadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatThreadStruct &&
        title == other.title &&
        lastMessageContent == other.lastMessageContent &&
        lastMessageSentBy == other.lastMessageSentBy &&
        lastMessageSent == other.lastMessageSent &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        lastMessageContent,
        lastMessageSentBy,
        lastMessageSent,
        createdAt
      ]);
}

ChatThreadStruct createChatThreadStruct({
  String? title,
  String? lastMessageContent,
  String? lastMessageSentBy,
  DateTime? lastMessageSent,
  DateTime? createdAt,
}) =>
    ChatThreadStruct(
      title: title,
      lastMessageContent: lastMessageContent,
      lastMessageSentBy: lastMessageSentBy,
      lastMessageSent: lastMessageSent,
      createdAt: createdAt,
    );
