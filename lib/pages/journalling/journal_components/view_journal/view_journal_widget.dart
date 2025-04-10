import '/all_components/ui_components/ui_icon_badge/ui_icon_badge_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_instructions/card_instructions_widget.dart';
import '/pages/journalling/journal_components/ui_actions_analyze/ui_actions_analyze_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'view_journal_model.dart';
export 'view_journal_model.dart';

class ViewJournalWidget extends StatefulWidget {
  const ViewJournalWidget({
    super.key,
    required this.memoryType,
  });

  final JournalType? memoryType;

  @override
  State<ViewJournalWidget> createState() => _ViewJournalWidgetState();
}

class _ViewJournalWidgetState extends State<ViewJournalWidget> {
  late ViewJournalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewJournalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.journalType = widget.memoryType;
      _model.showOptions = false;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Daily Reflection ',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                      TextSpan(
                        text: dateTimeFormat("MMMEd", getCurrentTimestamp),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                ),
              ),
              if (_model.aiPromptUsed)
                wrapWithModel(
                  model: _model.uiIconBadgeModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UiIconBadgeWidget(
                    icon: Icon(
                      FFIcons.kmagicWand01,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 16.0,
                    ),
                  ),
                ),
            ].divide(SizedBox(width: 16.0)),
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: _model.textController,
            focusNode: _model.textFieldFocusNode,
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
              alignLabelWithHint: true,
              hintText: 'Type here to respond...',
              hintStyle: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
              errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Figtree',
                    color: FlutterFlowTheme.of(context).error,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              filled: true,
              fillColor: FlutterFlowTheme.of(context).overlay0,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
              hoverColor: FlutterFlowTheme.of(context).overlay0,
            ),
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
            maxLines: 40,
            cursorColor: FlutterFlowTheme.of(context).tertiary,
            validator: _model.textControllerValidator.asValidator(context),
          ),
        ),
        wrapWithModel(
          model: _model.cardInstructionsModel,
          updateCallback: () => safeSetState(() {}),
          child: CardInstructionsWidget(
            title: 'Ai Summary',
            description:
                'Have Ai Summarize your day for you, simply type in a short description or use the audio input and tap the wand icon below when you have completed it..',
            showActions: false,
            acceptAction: () async {},
          ),
        ),
        wrapWithModel(
          model: _model.uiActionsAnalyzeModel,
          updateCallback: () => safeSetState(() {}),
          child: UiActionsAnalyzeWidget(
            showOptions: _model.showOptions,
            actionAi: () async {},
          ),
        ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 4.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).overlay30,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.journalType = JournalType.text;
                          safeSetState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: _model.journalType == JournalType.text
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).overlay0,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              FFIcons.kmenu03,
                              color: _model.journalType == JournalType.text
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.journalType = JournalType.ai;
                          safeSetState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: _model.journalType == JournalType.ai
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).overlay0,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              FFIcons.kmagicWand01,
                              color: _model.journalType == JournalType.ai
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.journalType = JournalType.image;
                          safeSetState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: _model.journalType == JournalType.image
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).overlay0,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              FFIcons.kvideoRecorder,
                              color: _model.journalType == JournalType.image
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.journalType = JournalType.audio;
                          safeSetState(() {});
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: _model.journalType == JournalType.audio
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).overlay0,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Icon(
                              FFIcons.krecording02,
                              color: _model.journalType == JournalType.audio
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 28.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 1.0)),
                ),
              ),
            ),
          ),
      ].divide(SizedBox(height: 12.0)).addToEnd(SizedBox(height: 8.0)),
    );
  }
}
