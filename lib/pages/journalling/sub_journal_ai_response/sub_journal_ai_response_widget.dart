import '/all_components/modals/modal_simple/modal_simple_widget.dart';
import '/all_components/ui_components/ui_icon_badge/ui_icon_badge_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/chat_components/chat_list_recents/chat_list_recents_widget.dart';
import '/pages/journalling/journal_components/card_instructions/card_instructions_widget.dart';
import '/pages/journalling/journal_components/ui_actions_analyze/ui_actions_analyze_widget.dart';
import '/pages/journalling/journal_components/ui_prompt_suggestions/ui_prompt_suggestions_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'sub_journal_ai_response_model.dart';
export 'sub_journal_ai_response_model.dart';

class SubJournalAiResponseWidget extends StatefulWidget {
  const SubJournalAiResponseWidget({super.key});

  static String routeName = 'sub_journal_ai_response';
  static String routePath = '/subJournalAiResponse';

  @override
  State<SubJournalAiResponseWidget> createState() =>
      _SubJournalAiResponseWidgetState();
}

class _SubJournalAiResponseWidgetState
    extends State<SubJournalAiResponseWidget> {
  late SubJournalAiResponseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubJournalAiResponseModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.showAI = false;
      _model.currentText =
          'Today, I had a small revelation of how I can train better more routinely, I want to schedule my time in the morning for 30 mins, listened to a great podcast that helped me understand the importance of habit formation.';
      _model.aiReflectionUsed = false;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).overlay0,
                    FlutterFlowTheme.of(context).secondaryBackground
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).overlay0,
                        FlutterFlowTheme.of(context).secondaryBackground
                      ],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 12.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '4 day streak!',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).overlay30,
                                borderRadius: 8.0,
                                borderWidth: 2.0,
                                buttonSize: 32.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).overlay30,
                                icon: Icon(
                                  FFIcons.kclockRewind,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                onPressed: () async {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    barrierColor:
                                        FlutterFlowTheme.of(context).accent4,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: ModalSimpleWidget(
                                            title: 'Recent Chats',
                                            subtitle:
                                                'Below are some of your interactions with Refuel.',
                                            maxHeight: 700.0,
                                            widgetContent: () =>
                                                ChatListRecentsWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                              ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
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
                                            text: dateTimeFormat(
                                                "MMMEd", getCurrentTimestamp),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                    ),
                                  ),
                                  if (_model.aiReflectionUsed)
                                    wrapWithModel(
                                      model: _model.uiIconBadgeModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: UiIconBadgeWidget(
                                        icon: Icon(
                                          FFIcons.kmagicWand01,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
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
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController',
                                  Duration(milliseconds: 2000),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: false,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                obscureText: false,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  hintText: 'Type here to respond...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                  errorStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).overlay0,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 16.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).overlay0,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                                maxLines: 40,
                                cursorColor:
                                    FlutterFlowTheme.of(context).tertiary,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            if (_model.showAI)
                              wrapWithModel(
                                model: _model.cardInstructionsModel,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: CardInstructionsWidget(
                                  title: 'Ai Analyze',
                                  description:
                                      'This morning, I had a small but significant realization about how I can improve my training routine and make it more consistent. I’ve decided to dedicate 30 minutes every morning to structured training, ensuring that I prioritize it as a daily habit rather than something I do sporadically. \n\nBy setting this time aside, I can build momentum and create a more sustainable routine that fits into my lifestyle without feeling like a chore.This insight was sparked by a great podcast I listened to, which emphasized the importance of habit formation and how small, intentional changes can lead to long-term success. It helped me understand that consistency is more important than intensity, and that by committing to a manageable time frame each day, I can make training an effortless part of my routine. With this approach, I feel more motivated and confident in my ability to stay on track.',
                                  showActions: true,
                                  acceptAction: () async {
                                    // update_page_w_response
                                    _model.currentText =
                                        'This morning, I had a small but significant realization about how I can improve my training routine and make it more consistent. I’ve decided to dedicate 30 minutes every morning to structured training, ensuring that I prioritize it as a daily habit rather than something I do sporadically. By setting this time aside, I can build momentum and create a more sustainable routine that fits into my lifestyle without feeling like a chore.This insight was sparked by a great podcast I listened to, which emphasized the importance of habit formation and how small, intentional changes can lead to long-term success. It helped me understand that consistency is more important than intensity, and that by committing to a manageable time frame each day, I can make training an effortless part of my routine. With this approach, I feel more motivated and confident in my ability to stay on track.';
                                    _model.showAI = false;
                                    _model.aiReflectionUsed = true;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textController?.text =
                                          'This morning, I had a small but significant realization about how I can improve my training routine and make it more consistent. I’ve decided to dedicate 30 minutes every morning to structured training, ensuring that I prioritize it as a daily habit rather than something I do sporadically. By setting this time aside, I can build momentum and create a more sustainable routine that fits into my lifestyle without feeling like a chore.This insight was sparked by a great podcast I listened to, which emphasized the importance of habit formation and how small, intentional changes can lead to long-term success. It helped me understand that consistency is more important than intensity, and that by committing to a manageable time frame each day, I can make training an effortless part of my routine. With this approach, I feel more motivated and confident in my ability to stay on track.';
                                      _model.textFieldFocusNode?.requestFocus();
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        _model.textController?.selection =
                                            TextSelection.collapsed(
                                          offset: _model
                                              .textController!.text.length,
                                        );
                                      });
                                    });
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'You have successfully accepted the changes.',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Figtree',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: Duration(milliseconds: 3000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            if ((_model.showAI == false) &&
                                (_model.textController.text == ''))
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Don\'t know what to write? How about these ideas:',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              safeSetState(() {
                                                _model.textController?.text =
                                                    'Today I was able to accomplish a milestone, and I found a way I can train better & more routinely, I want to schedule my time in the morning for 30 mins, listened to a great podcast that helped me understand the importance of habit formation.';
                                                _model.textFieldFocusNode
                                                    ?.requestFocus();
                                                WidgetsBinding.instance
                                                    .addPostFrameCallback((_) {
                                                  _model.textController
                                                          ?.selection =
                                                      TextSelection.collapsed(
                                                    offset: _model
                                                        .textController!
                                                        .text
                                                        .length,
                                                  );
                                                });
                                              });
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .uiPromptSuggestionsModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UiPromptSuggestionsWidget(
                                                title: 'Summarize my day',
                                                description:
                                                    'Today I was able to accomplish...',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .uiPromptSuggestionsModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: UiPromptSuggestionsWidget(
                                              title: 'My spiritual goals',
                                              description:
                                                  'Today I prayed for my goal of 30 minutes...',
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 8.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .uiPromptSuggestionsModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child: UiPromptSuggestionsWidget(
                                              title: 'Workouts',
                                              description:
                                                  'I had an amazing workout this morning...',
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(SizedBox(width: 8.0))
                                          .addToStart(SizedBox(width: 16.0)),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            wrapWithModel(
                              model: _model.uiActionsAnalyzeModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: UiActionsAnalyzeWidget(
                                showOptions: true,
                                actionAi: () async {
                                  _model.showAI = !_model.showAI;
                                  safeSetState(() {});
                                },
                              ),
                            ),
                            if (_model.aiReflectionUsed)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 12.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Save Journal',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 48.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).accent1,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Figtree',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hoverBorderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    hoverTextColor:
                                        FlutterFlowTheme.of(context).info,
                                    hoverElevation: 3.0,
                                  ),
                                ),
                              ),
                          ]
                              .divide(SizedBox(height: 12.0))
                              .addToEnd(SizedBox(height: 8.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
