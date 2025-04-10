// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JmlWrapperStruct extends BaseStruct {
  JmlWrapperStruct({
    JmlRenderType? type,
    String? textValue,
    String? imageUrl,
    Color? buttonColor,
    String? buttonSubtitle,
    String? buttonTitle,
    String? buttonUrl,
  })  : _type = type,
        _textValue = textValue,
        _imageUrl = imageUrl,
        _buttonColor = buttonColor,
        _buttonSubtitle = buttonSubtitle,
        _buttonTitle = buttonTitle,
        _buttonUrl = buttonUrl;

  // "type" field.
  JmlRenderType? _type;
  JmlRenderType? get type => _type;
  set type(JmlRenderType? val) => _type = val;

  bool hasType() => _type != null;

  // "textValue" field.
  String? _textValue;
  String get textValue => _textValue ?? '';
  set textValue(String? val) => _textValue = val;

  bool hasTextValue() => _textValue != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "buttonColor" field.
  Color? _buttonColor;
  Color? get buttonColor => _buttonColor;
  set buttonColor(Color? val) => _buttonColor = val;

  bool hasButtonColor() => _buttonColor != null;

  // "buttonSubtitle" field.
  String? _buttonSubtitle;
  String get buttonSubtitle => _buttonSubtitle ?? '';
  set buttonSubtitle(String? val) => _buttonSubtitle = val;

  bool hasButtonSubtitle() => _buttonSubtitle != null;

  // "buttonTitle" field.
  String? _buttonTitle;
  String get buttonTitle => _buttonTitle ?? '';
  set buttonTitle(String? val) => _buttonTitle = val;

  bool hasButtonTitle() => _buttonTitle != null;

  // "buttonUrl" field.
  String? _buttonUrl;
  String get buttonUrl => _buttonUrl ?? '';
  set buttonUrl(String? val) => _buttonUrl = val;

  bool hasButtonUrl() => _buttonUrl != null;

  static JmlWrapperStruct fromMap(Map<String, dynamic> data) =>
      JmlWrapperStruct(
        type: data['type'] is JmlRenderType
            ? data['type']
            : deserializeEnum<JmlRenderType>(data['type']),
        textValue: data['textValue'] as String?,
        imageUrl: data['imageUrl'] as String?,
        buttonColor: getSchemaColor(data['buttonColor']),
        buttonSubtitle: data['buttonSubtitle'] as String?,
        buttonTitle: data['buttonTitle'] as String?,
        buttonUrl: data['buttonUrl'] as String?,
      );

  static JmlWrapperStruct? maybeFromMap(dynamic data) => data is Map
      ? JmlWrapperStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type?.serialize(),
        'textValue': _textValue,
        'imageUrl': _imageUrl,
        'buttonColor': _buttonColor,
        'buttonSubtitle': _buttonSubtitle,
        'buttonTitle': _buttonTitle,
        'buttonUrl': _buttonUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'textValue': serializeParam(
          _textValue,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'buttonColor': serializeParam(
          _buttonColor,
          ParamType.Color,
        ),
        'buttonSubtitle': serializeParam(
          _buttonSubtitle,
          ParamType.String,
        ),
        'buttonTitle': serializeParam(
          _buttonTitle,
          ParamType.String,
        ),
        'buttonUrl': serializeParam(
          _buttonUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static JmlWrapperStruct fromSerializableMap(Map<String, dynamic> data) =>
      JmlWrapperStruct(
        type: deserializeParam<JmlRenderType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        textValue: deserializeParam(
          data['textValue'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
        buttonColor: deserializeParam(
          data['buttonColor'],
          ParamType.Color,
          false,
        ),
        buttonSubtitle: deserializeParam(
          data['buttonSubtitle'],
          ParamType.String,
          false,
        ),
        buttonTitle: deserializeParam(
          data['buttonTitle'],
          ParamType.String,
          false,
        ),
        buttonUrl: deserializeParam(
          data['buttonUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'JmlWrapperStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is JmlWrapperStruct &&
        type == other.type &&
        textValue == other.textValue &&
        imageUrl == other.imageUrl &&
        buttonColor == other.buttonColor &&
        buttonSubtitle == other.buttonSubtitle &&
        buttonTitle == other.buttonTitle &&
        buttonUrl == other.buttonUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        textValue,
        imageUrl,
        buttonColor,
        buttonSubtitle,
        buttonTitle,
        buttonUrl
      ]);
}

JmlWrapperStruct createJmlWrapperStruct({
  JmlRenderType? type,
  String? textValue,
  String? imageUrl,
  Color? buttonColor,
  String? buttonSubtitle,
  String? buttonTitle,
  String? buttonUrl,
}) =>
    JmlWrapperStruct(
      type: type,
      textValue: textValue,
      imageUrl: imageUrl,
      buttonColor: buttonColor,
      buttonSubtitle: buttonSubtitle,
      buttonTitle: buttonTitle,
      buttonUrl: buttonUrl,
    );
