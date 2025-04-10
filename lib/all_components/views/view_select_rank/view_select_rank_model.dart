import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'view_select_rank_widget.dart' show ViewSelectRankWidget;
import 'package:flutter/material.dart';

class ViewSelectRankModel extends FlutterFlowModel<ViewSelectRankWidget> {
  ///  Local state fields for this component.

  DataFieldsSimpleStruct? selectedRank;
  void updateSelectedRankStruct(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(selectedRank ??= DataFieldsSimpleStruct());
  }

  RankType? filter = RankType.Enlisted;

  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for ui_header_sub dynamic component.
  late FlutterFlowDynamicModels<UiHeaderSubModel> uiHeaderSubModels2;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    uiHeaderSubModels2 = FlutterFlowDynamicModels(() => UiHeaderSubModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel1.dispose();
    uiHeaderSubModels2.dispose();
  }
}
