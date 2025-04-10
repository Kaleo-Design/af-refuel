import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_empty/ui_empty_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/components/ui_pages/page_basic/page_basic_widget.dart';
import '/components/ui_sections/section_list_activity/section_list_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'main_notifications_widget.dart' show MainNotificationsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainNotificationsModel extends FlutterFlowModel<MainNotificationsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Model for nav_container component.
  late NavContainerModel navContainerModel;
  // Model for page_basic component.
  late PageBasicModel pageBasicModel;

  @override
  void initState(BuildContext context) {
    navContainerModel = createModel(context, () => NavContainerModel());
    pageBasicModel = createModel(context, () => PageBasicModel());
  }

  @override
  void dispose() {
    navContainerModel.dispose();
    pageBasicModel.dispose();
  }
}
