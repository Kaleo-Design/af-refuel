import '/all_components/nav/nav_item/nav_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_custom_widget.dart' show NavCustomWidget;
import 'package:flutter/material.dart';

class NavCustomModel extends FlutterFlowModel<NavCustomWidget> {
  ///  Local state fields for this component.

  int? selectedNav;

  ///  State fields for stateful widgets in this component.

  // Model for nav_item component.
  late NavItemModel navItemModel1;
  // Model for nav_item component.
  late NavItemModel navItemModel2;
  // Model for nav_item component.
  late NavItemModel navItemModel3;
  // Model for nav_item component.
  late NavItemModel navItemModel4;
  // Model for nav_item component.
  late NavItemModel navItemModel5;

  @override
  void initState(BuildContext context) {
    navItemModel1 = createModel(context, () => NavItemModel());
    navItemModel2 = createModel(context, () => NavItemModel());
    navItemModel3 = createModel(context, () => NavItemModel());
    navItemModel4 = createModel(context, () => NavItemModel());
    navItemModel5 = createModel(context, () => NavItemModel());
  }

  @override
  void dispose() {
    navItemModel1.dispose();
    navItemModel2.dispose();
    navItemModel3.dispose();
    navItemModel4.dispose();
    navItemModel5.dispose();
  }
}
