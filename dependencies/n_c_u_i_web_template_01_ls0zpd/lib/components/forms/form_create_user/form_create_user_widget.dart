import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_create_user_model.dart';
export 'form_create_user_model.dart';

class FormCreateUserWidget extends StatefulWidget {
  const FormCreateUserWidget({super.key});

  @override
  State<FormCreateUserWidget> createState() => _FormCreateUserWidgetState();
}

class _FormCreateUserWidgetState extends State<FormCreateUserWidget> {
  late FormCreateUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCreateUserModel());

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
              labelText: 'Display Name',
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
              labelText: 'Email Address',
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
            validator:
                _model.descriptionTextControllerValidator.asValidator(context),
          ),
          Text(
            'Assign Role',
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
        ].divide(SizedBox(height: 12.0)).addToEnd(SizedBox(height: 32.0)),
      ),
    );
  }
}
