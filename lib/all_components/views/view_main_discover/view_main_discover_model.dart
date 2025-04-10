import '/all_components/cards/card_large_activity/card_large_activity_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/views/view_recommended_tasks/view_recommended_tasks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'view_main_discover_widget.dart' show ViewMainDiscoverWidget;
import 'package:flutter/material.dart';

class ViewMainDiscoverModel extends FlutterFlowModel<ViewMainDiscoverWidget> {
  ///  Local state fields for this component.

  List<String> pageFilters = [];
  void addToPageFilters(String item) => pageFilters.add(item);
  void removeFromPageFilters(String item) => pageFilters.remove(item);
  void removeAtIndexFromPageFilters(int index) => pageFilters.removeAt(index);
  void insertAtIndexInPageFilters(int index, String item) =>
      pageFilters.insert(index, item);
  void updatePageFiltersAtIndex(int index, Function(String) updateFn) =>
      pageFilters[index] = updateFn(pageFilters[index]);

  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // State field(s) for all_Selector widget.
  FormFieldController<List<String>>? allSelectorValueController;
  String? get allSelectorValue =>
      allSelectorValueController?.value?.firstOrNull;
  set allSelectorValue(String? val) =>
      allSelectorValueController?.value = val != null ? [val] : [];
  // State field(s) for filters widget.
  FormFieldController<List<String>>? filtersValueController;
  List<String>? get filtersValues => filtersValueController?.value;
  set filtersValues(List<String>? val) => filtersValueController?.value = val;
  // Model for view_recommended_tasks component.
  late ViewRecommendedTasksModel viewRecommendedTasksModel;
  // Model for card_large_activity component.
  late CardLargeActivityModel cardLargeActivityModel1;
  // Model for card_large_activity component.
  late CardLargeActivityModel cardLargeActivityModel2;
  // Model for card_large_activity component.
  late CardLargeActivityModel cardLargeActivityModel3;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    viewRecommendedTasksModel =
        createModel(context, () => ViewRecommendedTasksModel());
    cardLargeActivityModel1 =
        createModel(context, () => CardLargeActivityModel());
    cardLargeActivityModel2 =
        createModel(context, () => CardLargeActivityModel());
    cardLargeActivityModel3 =
        createModel(context, () => CardLargeActivityModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel.dispose();
    viewRecommendedTasksModel.dispose();
    cardLargeActivityModel1.dispose();
    cardLargeActivityModel2.dispose();
    cardLargeActivityModel3.dispose();
  }
}
