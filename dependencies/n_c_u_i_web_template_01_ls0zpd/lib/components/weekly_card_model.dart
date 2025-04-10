import '/components/trend_opacity_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'weekly_card_widget.dart' show WeeklyCardWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class WeeklyCardModel extends FlutterFlowModel<WeeklyCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_title component.
  late UiTitleModel uiTitleModel;

  @override
  void initState(BuildContext context) {
    uiTitleModel = createModel(context, () => UiTitleModel());
  }

  @override
  void dispose() {
    uiTitleModel.dispose();
  }
}
