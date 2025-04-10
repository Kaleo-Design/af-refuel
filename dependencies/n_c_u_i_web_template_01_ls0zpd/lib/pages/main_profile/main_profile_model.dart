import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_empty/ui_empty_widget.dart';
import '/components/ui_pages/page_main/page_main_widget.dart';
import '/components/ui_sections/section_profile/section_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'main_profile_widget.dart' show MainProfileWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainProfileModel extends FlutterFlowModel<MainProfileWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  // Model for nav_container component.
  late NavContainerModel navContainerModel;
  // Model for page_main component.
  late PageMainModel pageMainModel;

  @override
  void initState(BuildContext context) {
    navContainerModel = createModel(context, () => NavContainerModel());
    pageMainModel = createModel(context, () => PageMainModel());
  }

  @override
  void dispose() {
    navContainerModel.dispose();
    pageMainModel.dispose();
  }
}
