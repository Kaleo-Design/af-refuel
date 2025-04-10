import '/flutter_flow/flutter_flow_util.dart';
import 'view_recommended_tasks_widget.dart' show ViewRecommendedTasksWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class ViewRecommendedTasksModel
    extends FlutterFlowModel<ViewRecommendedTasksWidget> {
  ///  Local state fields for this component.

  bool hideContent = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}
}
