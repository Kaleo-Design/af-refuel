import '/components/cards/card_appointment/card_appointment_widget.dart';
import '/components/lists/list_activity_simple/list_activity_simple_widget.dart';
import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_list_activity_model.dart';
export 'section_list_activity_model.dart';

class SectionListActivityWidget extends StatefulWidget {
  const SectionListActivityWidget({super.key});

  @override
  State<SectionListActivityWidget> createState() =>
      _SectionListActivityWidgetState();
}

class _SectionListActivityWidgetState extends State<SectionListActivityWidget> {
  late SectionListActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionListActivityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: wrapWithModel(
              model: _model.listActivitySimpleModel1,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: ListActivitySimpleWidget(
                name: 'Andrew D.',
                description: 'Did a thing with this new component!',
                dateTime: getCurrentTimestamp,
                card: () => CardAppointmentWidget(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: wrapWithModel(
              model: _model.listActivitySimpleModel2,
              updateCallback: () => safeSetState(() {}),
              child: ListActivitySimpleWidget(
                dateTime: getCurrentTimestamp,
                card: () => UserInfoWidget(
                  showName: true,
                  name: 'Andy',
                  subTitle: 'name@domain.com',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: wrapWithModel(
              model: _model.listActivitySimpleModel3,
              updateCallback: () => safeSetState(() {}),
              child: ListActivitySimpleWidget(
                name: 'Lucy G.',
                description: 'Sent an invite to a new user.',
                dateTime: getCurrentTimestamp,
                unread: false,
                card: () => TagGenericWidget(
                  text: 'This is awesome!',
                  accentColor: FlutterFlowTheme.of(context).accent2,
                  fillColor: FlutterFlowTheme.of(context).secondary,
                ),
              ),
            ),
          ),
        ].divide(SizedBox(height: 1.0)),
      ),
    );
  }
}
