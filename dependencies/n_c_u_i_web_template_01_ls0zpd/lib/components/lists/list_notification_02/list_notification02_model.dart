import '/components/user_components/user_avatar/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'list_notification02_widget.dart' show ListNotification02Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListNotification02Model
    extends FlutterFlowModel<ListNotification02Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_avatar component.
  late UserAvatarModel userAvatarModel;

  @override
  void initState(BuildContext context) {
    userAvatarModel = createModel(context, () => UserAvatarModel());
  }

  @override
  void dispose() {
    userAvatarModel.dispose();
  }
}
