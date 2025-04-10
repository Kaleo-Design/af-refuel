import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'form_comment_simple_model.dart';
export 'form_comment_simple_model.dart';

class FormCommentSimpleWidget extends StatefulWidget {
  const FormCommentSimpleWidget({
    super.key,
    String? hintText,
    String? buttonText,
    this.sendAction,
  })  : this.hintText = hintText ?? 'Leave reply here...',
        this.buttonText = buttonText ?? 'Send';

  final String hintText;
  final String buttonText;
  final Future Function()? sendAction;

  @override
  State<FormCommentSimpleWidget> createState() =>
      _FormCommentSimpleWidgetState();
}

class _FormCommentSimpleWidgetState extends State<FormCommentSimpleWidget> {
  late FormCommentSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormCommentSimpleModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 1.0,
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).alternate,
        ),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(valueOrDefault<double>(
                FFAppConstants.sizeMedium.toDouble(),
                0.0,
              )),
              bottomRight: Radius.circular(valueOrDefault<double>(
                FFAppConstants.sizeMedium.toDouble(),
                0.0,
              )),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Stack(
              alignment: AlignmentDirectional(1.0, 1.0),
              children: [
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    textCapitalization: TextCapitalization.sentences,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                letterSpacing: 0.0,
                              ),
                      alignLabelWithHint: true,
                      hintText: widget!.hintText,
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                letterSpacing: 0.0,
                              ),
                      errorStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 32.0, 16.0),
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 8,
                    minLines: 4,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 1.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 8.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        // comment_exists
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        await widget.sendAction?.call();
                        // clear_comment_field
                        safeSetState(() {
                          _model.textController?.clear();
                        });
                      },
                      text: widget!.buttonText,
                      options: FFButtonOptions(
                        height: 44.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).accent1,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        hoverColor: FlutterFlowTheme.of(context).primary,
                        hoverBorderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        hoverTextColor: FlutterFlowTheme.of(context).info,
                        hoverElevation: 3.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
