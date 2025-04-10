import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'ui_comment_widget.dart' show UiCommentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UiCommentModel extends FlutterFlowModel<UiCommentWidget> {
  ///  Local state fields for this component.

  bool showReply = false;

  ///  State fields for stateful widgets in this component.

  // Model for user_info component.
  late UserInfoModel userInfoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    userInfoModel = createModel(context, () => UserInfoModel());
  }

  @override
  void dispose() {
    userInfoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
