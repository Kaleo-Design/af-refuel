import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'main_recent_widget.dart' show MainRecentWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainRecentModel extends FlutterFlowModel<MainRecentWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Model for nav_container component.
  late NavContainerModel navContainerModel;

  @override
  void initState(BuildContext context) {
    navContainerModel = createModel(context, () => NavContainerModel());
  }

  @override
  void dispose() {
    navContainerModel.dispose();
  }
}
