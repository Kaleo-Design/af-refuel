import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_comment_model.dart';
export 'ui_comment_model.dart';

class UiCommentWidget extends StatefulWidget {
  const UiCommentWidget({
    super.key,
    required this.moreAction,
    this.contentBody,
    required this.sendAction,
    String? name,
    String? subTitle,
    String? avatar,
  })  : this.name = name ?? 'User Name',
        this.subTitle = subTitle ?? 'name@domain.com',
        this.avatar = avatar ?? '';

  final Future Function()? moreAction;
  final String? contentBody;
  final Future Function()? sendAction;
  final String name;
  final String subTitle;
  final String avatar;

  @override
  State<UiCommentWidget> createState() => _UiCommentWidgetState();
}

class _UiCommentWidgetState extends State<UiCommentWidget>
    with TickerProviderStateMixin {
  late UiCommentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiCommentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 12.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.userInfoModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: UserInfoWidget(
                    showName: false,
                    name: widget!.name,
                    subTitle: widget!.subTitle,
                    avatar: widget!.avatar,
                    imageSize: 32,
                  ),
                ),
              ),
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: FFAppConstants.sizeSmall.toDouble(),
                borderWidth: 1.0,
                buttonSize: 36.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.keyboard_control,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  await widget.moreAction?.call();
                },
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
          Text(
            valueOrDefault<String>(
              widget!.contentBody,
              '--',
            ),
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
              _model.showReply = !_model.showReply;
              safeSetState(() {});
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _model.showReply ? 'Hide' : 'Reply',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.post_add_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 16.0,
                  ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
          if (_model.showReply)
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional(1.0, 1.0),
                children: [
                  Container(
                    width: double.infinity,
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Leave reply here...',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        alignLabelWithHint: true,
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 32.0, 16.0),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 8.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await widget.sendAction?.call();
                          safeSetState(() {
                            _model.textController?.clear();
                          });
                          _model.showReply = !_model.showReply;
                          safeSetState(() {});
                        },
                        text: 'Send',
                        options: FFButtonOptions(
                          height: 44.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ].divide(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 12.0)),
      ),
    );
  }
}
