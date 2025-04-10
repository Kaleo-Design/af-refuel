import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'chat_box_model.dart';
export 'chat_box_model.dart';

class ChatBoxWidget extends StatefulWidget {
  const ChatBoxWidget({
    super.key,
    bool? readOnly,
    String? hintText,
    required this.sendActon,
  })  : this.readOnly = readOnly ?? false,
        this.hintText = hintText ?? 'Start a conversation here...';

  final bool readOnly;
  final String hintText;

  /// This is an action linked to sending a messsage.
  final Future Function()? sendActon;

  @override
  State<ChatBoxWidget> createState() => _ChatBoxWidgetState();
}

class _ChatBoxWidgetState extends State<ChatBoxWidget>
    with TickerProviderStateMixin {
  late ChatBoxModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBoxModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (animationsMap['containerOnActionTriggerAnimation'] != null) {
        animationsMap['containerOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        if (animationsMap['containerOnActionTriggerAnimation'] != null) {
          animationsMap['containerOnActionTriggerAnimation']!
              .controller
              .reset();
        }
      },
    );
    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1600.0.ms,
            color: FlutterFlowTheme.of(context).accent1,
            angle: 0.524,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: FlutterFlowTheme.of(context).accent1,
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).tertiary,
              FlutterFlowTheme.of(context).primary
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).accent1,
            width: 2.0,
          ),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onFieldSubmitted: (_) async {
                      // validate_form
                      _model.formSuccess = true;
                      if (_model.formKey.currentState == null ||
                          !_model.formKey.currentState!.validate()) {
                        safeSetState(() => _model.formSuccess = false);
                        return;
                      }
                      await widget.sendActon?.call();

                      safeSetState(() {});
                    },
                    autofocus: false,
                    textCapitalization: TextCapitalization.sentences,
                    readOnly: widget.readOnly,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                      hintText: widget.hintText,
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).overlay0,
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 56.0, 16.0),
                      hoverColor: FlutterFlowTheme.of(context).overlay0,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 4,
                    minLines: 1,
                    cursorColor: FlutterFlowTheme.of(context).tertiary,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 4.0,
                      buttonSize: 40.0,
                      fillColor: (_model.textFieldFocusNode?.hasFocus ?? false)
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).accent3,
                      icon: Icon(
                        FFIcons.ksend01,
                        color: FlutterFlowTheme.of(context).info,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        if (widget.readOnly) {
                          context.pushNamed(MainChatWidget.routeName);
                        } else {
                          // validate_form
                          _model.formSuccessButton = true;
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            safeSetState(
                                () => _model.formSuccessButton = false);
                            return;
                          }
                          await widget.sendActon?.call();
                        }

                        safeSetState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ).animateOnActionTrigger(
            animationsMap['containerOnActionTriggerAnimation']!,
          ),
        ),
      ),
    );
  }
}
