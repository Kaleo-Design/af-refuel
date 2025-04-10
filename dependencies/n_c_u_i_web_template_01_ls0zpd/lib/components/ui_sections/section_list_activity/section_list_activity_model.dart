import '/components/cards/card_appointment/card_appointment_widget.dart';
import '/components/lists/list_activity_simple/list_activity_simple_widget.dart';
import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'section_list_activity_widget.dart' show SectionListActivityWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionListActivityModel
    extends FlutterFlowModel<SectionListActivityWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for list_activity_simple component.
  late ListActivitySimpleModel listActivitySimpleModel1;
  // Model for list_activity_simple component.
  late ListActivitySimpleModel listActivitySimpleModel2;
  // Model for list_activity_simple component.
  late ListActivitySimpleModel listActivitySimpleModel3;

  @override
  void initState(BuildContext context) {
    listActivitySimpleModel1 =
        createModel(context, () => ListActivitySimpleModel());
    listActivitySimpleModel2 =
        createModel(context, () => ListActivitySimpleModel());
    listActivitySimpleModel3 =
        createModel(context, () => ListActivitySimpleModel());
  }

  @override
  void dispose() {
    listActivitySimpleModel1.dispose();
    listActivitySimpleModel2.dispose();
    listActivitySimpleModel3.dispose();
  }
}
