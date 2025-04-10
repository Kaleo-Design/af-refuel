import '/all_components/cards/card_image_title_sub/card_image_title_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'card_activity_widget.dart' show CardActivityWidget;
import 'package:flutter/material.dart';

class CardActivityModel extends FlutterFlowModel<CardActivityWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for card_image_title_sub component.
  late CardImageTitleSubModel cardImageTitleSubModel1;
  // Model for card_image_title_sub component.
  late CardImageTitleSubModel cardImageTitleSubModel2;
  // Model for card_image_title_sub component.
  late CardImageTitleSubModel cardImageTitleSubModel3;

  @override
  void initState(BuildContext context) {
    cardImageTitleSubModel1 =
        createModel(context, () => CardImageTitleSubModel());
    cardImageTitleSubModel2 =
        createModel(context, () => CardImageTitleSubModel());
    cardImageTitleSubModel3 =
        createModel(context, () => CardImageTitleSubModel());
  }

  @override
  void dispose() {
    cardImageTitleSubModel1.dispose();
    cardImageTitleSubModel2.dispose();
    cardImageTitleSubModel3.dispose();
  }
}
