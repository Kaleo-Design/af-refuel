import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/views/view_main_discover/view_main_discover_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_discover_widget.dart' show MainDiscoverWidget;
import 'package:flutter/material.dart';

class MainDiscoverModel extends FlutterFlowModel<MainDiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for nav_header component.
  late NavHeaderModel navHeaderModel;
  // Model for view_main_discover component.
  late ViewMainDiscoverModel viewMainDiscoverModel;
  // Model for nav_custom component.
  late NavCustomModel navCustomModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    navHeaderModel = createModel(context, () => NavHeaderModel());
    viewMainDiscoverModel = createModel(context, () => ViewMainDiscoverModel());
    navCustomModel = createModel(context, () => NavCustomModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    navHeaderModel.dispose();
    viewMainDiscoverModel.dispose();
    navCustomModel.dispose();
  }
}
