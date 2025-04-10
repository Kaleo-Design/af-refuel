import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'form_create_task_widget.dart' show FormCreateTaskWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormCreateTaskModel extends FlutterFlowModel<FormCreateTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for task widget.
  FocusNode? taskFocusNode;
  TextEditingController? taskTextController;
  String? Function(BuildContext, String?)? taskTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  DateTime? datePicked;
  // Model for ui_section_buttons_medium component.
  late UiSectionButtonsMediumModel uiSectionButtonsMediumModel;

  @override
  void initState(BuildContext context) {
    uiSectionButtonsMediumModel =
        createModel(context, () => UiSectionButtonsMediumModel());
  }

  @override
  void dispose() {
    taskFocusNode?.dispose();
    taskTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    uiSectionButtonsMediumModel.dispose();
  }
}
