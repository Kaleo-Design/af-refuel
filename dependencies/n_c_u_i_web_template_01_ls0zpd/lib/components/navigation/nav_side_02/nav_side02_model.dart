import '/components/ui_elements/logo/logo_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'nav_side02_widget.dart' show NavSide02Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavSide02Model extends FlutterFlowModel<NavSide02Widget> {
  ///  Local state fields for this component.

  int? selectedNav;

  ///  State fields for stateful widgets in this component.

  // Model for logo component.
  late LogoModel logoModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // Model for user_info component.
  late UserInfoModel userInfoModel;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    userInfoModel = createModel(context, () => UserInfoModel());
  }

  @override
  void dispose() {
    logoModel.dispose();
    userInfoModel.dispose();
  }
}
