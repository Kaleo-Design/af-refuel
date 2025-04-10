import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_create_task_model.dart';
export 'form_create_task_model.dart';

class FormCreateTaskWidget extends StatefulWidget {
  const FormCreateTaskWidget({super.key});

  @override
  State<FormCreateTaskWidget> createState() => _FormCreateTaskWidgetState();
}

class _FormCreateTaskWidgetState extends State<FormCreateTaskWidget> {
  late FormCreateTaskModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCreateTaskModel());

    _model.taskTextController ??= TextEditingController();
    _model.taskFocusNode ??= FocusNode();

    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _model.taskTextController,
            focusNode: _model.taskFocusNode,
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Task Name',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              filled: true,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            cursorColor: FlutterFlowTheme.of(context).primary,
            validator: _model.taskTextControllerValidator.asValidator(context),
          ),
          TextFormField(
            controller: _model.descriptionTextController,
            focusNode: _model.descriptionFocusNode,
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
              alignLabelWithHint: true,
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              filled: true,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            maxLines: 8,
            minLines: 4,
            cursorColor: FlutterFlowTheme.of(context).primary,
            validator:
                _model.descriptionTextControllerValidator.asValidator(context),
          ),
          Text(
            'Tag',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
          ),
          FlutterFlowChoiceChips(
            options: [
              ChipData('Product Design'),
              ChipData('FlutterFlow'),
              ChipData('UI Design'),
              ChipData('Web Design')
            ],
            onChanged: (val) =>
                safeSetState(() => _model.choiceChipsValue = val?.firstOrNull),
            selectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).accent2,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
              iconColor: FlutterFlowTheme.of(context).primaryText,
              iconSize: 18.0,
              elevation: 0.0,
              borderColor: FlutterFlowTheme.of(context).secondary,
              borderWidth: 2.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
            unselectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
              iconColor: FlutterFlowTheme.of(context).secondaryText,
              iconSize: 18.0,
              elevation: 0.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
            chipSpacing: 8.0,
            rowSpacing: 8.0,
            multiselect: false,
            initialized: _model.choiceChipsValue != null,
            alignment: WrapAlignment.start,
            controller: _model.choiceChipsValueController ??=
                FormFieldController<List<String>>(
              ['Product Design'],
            ),
            wrapped: true,
          ),
          Text(
            'Due Date',
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              final _datePickedDate = await showDatePicker(
                context: context,
                initialDate: getCurrentTimestamp,
                firstDate: getCurrentTimestamp,
                lastDate: DateTime(2050),
                builder: (context, child) {
                  return wrapInMaterialDatePickerTheme(
                    context,
                    child!,
                    headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                    headerForegroundColor: FlutterFlowTheme.of(context).info,
                    headerTextStyle:
                        FlutterFlowTheme.of(context).headlineLarge.override(
                              fontFamily: 'Figtree',
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                    pickerBackgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    pickerForegroundColor:
                        FlutterFlowTheme.of(context).primaryText,
                    selectedDateTimeBackgroundColor:
                        FlutterFlowTheme.of(context).primary,
                    selectedDateTimeForegroundColor:
                        FlutterFlowTheme.of(context).info,
                    actionButtonForegroundColor:
                        FlutterFlowTheme.of(context).primaryText,
                    iconSize: 24.0,
                  );
                },
              );

              if (_datePickedDate != null) {
                safeSetState(() {
                  _model.datePicked = DateTime(
                    _datePickedDate.year,
                    _datePickedDate.month,
                    _datePickedDate.day,
                  );
                });
              } else if (_model.datePicked != null) {
                safeSetState(() {
                  _model.datePicked = getCurrentTimestamp;
                });
              }
            },
            child: Container(
              width: double.infinity,
              height: 48.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 2.0,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      dateTimeFormat("MMMEd", _model.datePicked),
                      'Select a date',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ),
          ),
          wrapWithModel(
            model: _model.uiSectionButtonsMediumModel,
            updateCallback: () => safeSetState(() {}),
            child: UiSectionButtonsMediumWidget(
              titlePositive: 'Create Task',
              titleNeutral: 'Cancel',
              actionPositive: () async {},
              actionNeutral: () async {},
            ),
          ),
        ].divide(SizedBox(height: 12.0)).addToEnd(SizedBox(height: 32.0)),
      ),
    );
  }
}
