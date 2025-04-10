import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_avatar/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'user_details_basic_info_widget.dart' show UserDetailsBasicInfoWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsBasicInfoModel
    extends FlutterFlowModel<UserDetailsBasicInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_avatar component.
  late UserAvatarModel userAvatarModel;
  // Model for tag_generic component.
  late TagGenericModel tagGenericModel1;
  // Model for tag_generic component.
  late TagGenericModel tagGenericModel2;

  @override
  void initState(BuildContext context) {
    userAvatarModel = createModel(context, () => UserAvatarModel());
    tagGenericModel1 = createModel(context, () => TagGenericModel());
    tagGenericModel2 = createModel(context, () => TagGenericModel());
  }

  @override
  void dispose() {
    userAvatarModel.dispose();
    tagGenericModel1.dispose();
    tagGenericModel2.dispose();
  }
}
