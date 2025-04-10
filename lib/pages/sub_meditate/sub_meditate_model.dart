import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'sub_meditate_widget.dart' show SubMeditateWidget;
import 'package:flutter/material.dart';

class SubMeditateModel extends FlutterFlowModel<SubMeditateWidget> {
  ///  Local state fields for this page.

  bool meditationPlaying = true;

  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for ui_play_toggle component.
  late UiPlayToggleModel uiPlayToggleModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    uiPlayToggleModel = createModel(context, () => UiPlayToggleModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    uiPlayToggleModel.dispose();
  }
}
