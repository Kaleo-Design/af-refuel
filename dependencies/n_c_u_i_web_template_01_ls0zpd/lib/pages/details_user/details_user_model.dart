import '/components/cards/card_activity_view/card_activity_view_widget.dart';
import '/components/navigation/nav_breadcrumbs_01/nav_breadcrumbs01_widget.dart';
import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_01/nav_side01_widget.dart';
import '/components/ui_pages/page_basic/page_basic_widget.dart';
import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'details_user_widget.dart' show DetailsUserWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsUserModel extends FlutterFlowModel<DetailsUserWidget> {
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
