import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import '/pages/chat_components/chatgpt_flow/empty_list/empty_list_widget.dart';
import '/pages/chat_components/chatgpt_flow/writing_indicator/writing_indicator_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ai_chat_component_model.dart';
export 'ai_chat_component_model.dart';

class AiChatComponentWidget extends StatefulWidget {
  const AiChatComponentWidget({super.key});

  @override
  State<AiChatComponentWidget> createState() => _AiChatComponentWidgetState();
}

class _AiChatComponentWidgetState extends State<AiChatComponentWidget> {
  late AiChatComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AiChatComponentModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 770.0,
        ),
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 100.0,
                        height: 24.0,
                        decoration: BoxDecoration(),
                      ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5.0,
                              sigmaY: 4.0,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Builder(
                                      builder: (context) {
                                        final chat =
                                            _model.chatHistory?.toList() ?? [];
                                        if (chat.isEmpty) {
                                          return Container(
                                            width: double.infinity,
                                            child: EmptyListWidget(),
                                          );
                                        }

                                        return ListView.builder(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            16.0,
                                            0,
                                            16.0,
                                          ),
                                          scrollDirection: Axis.vertical,
                                          itemCount: chat.length,
                                          itemBuilder: (context, chatIndex) {
                                            final chatItem = chat[chatIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if ((int index) {
                                                    return index % 2 != 0;
                                                  }(chatIndex))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      1170.0) {
                                                                    return 700.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <=
                                                                      470.0) {
                                                                    return 330.0;
                                                                  } else {
                                                                    return 530.0;
                                                                  }
                                                                }(),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          12.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          12.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          12.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent4,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        8.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      getJsonField(
                                                                        chatItem,
                                                                        r'''$['content']''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Figtree',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    )),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  await Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                    getJsonField(
                                                                      chatItem,
                                                                      r'''$['content']''',
                                                                    )?.toString(),
                                                                    '--',
                                                                  )));
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Response copied to clipboard.',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Figtree',
                                                                              color: FlutterFlowTheme.of(context).info,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                    ),
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            12.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.content_copy,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Copy response',
                                                                            style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                  fontFamily: 'Figtree',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  if (chatIndex % 2 == 0)
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >=
                                                                  1170.0) {
                                                                return 700.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <=
                                                                  470.0) {
                                                                return 330.0;
                                                              } else {
                                                                return 530.0;
                                                              }
                                                            }(),
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      12.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        8.0,
                                                                        12.0,
                                                                        8.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  getJsonField(
                                                                    chatItem,
                                                                    r'''$['content']''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Figtree',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            );
                                          },
                                          controller: _model.listViewController,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                if (_model.aiResponding == true)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.writingIndicatorModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: WritingIndicatorWidget(),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: wrapWithModel(
                model: _model.chatBoxModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: ChatBoxWidget(
                  readOnly: false,
                  hintText: 'Start a conversation below...',
                  sendActon: () async {
                    // addToChat_aiTyping
                    _model.aiResponding = true;
                    _model.chatHistory = functions.saveChatHistory(
                        _model.chatHistory,
                        functions.convertToJSON(
                            _model.chatBoxModel.textController.text));
                    safeSetState(() {});
                    // The "chatHistory" is the generated JSON -- we send the whole chat history to AI in order for it to understand context.
                    _model.chatGPTResponse =
                        await OpenAIChatGPTGroup.sendFullPromptCall.call(
                      apiKey:
                          ' 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',
                      promptJson: _model.chatHistory,
                    );

                    if ((_model.chatGPTResponse?.succeeded ?? true)) {
                      // return_response
                      _model.aiResponding = false;
                      _model.chatHistory = functions.saveChatHistory(
                          _model.chatHistory,
                          getJsonField(
                            (_model.chatGPTResponse?.jsonBody ?? ''),
                            r'''$['choices'][0]['messages']''',
                          ));
                      safeSetState(() {});
                      // clear_input
                      safeSetState(() {
                        _model.chatBoxModel.textController?.clear();
                      });
                    } else {
                      // show_error
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Your API Call Failed!',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: FlutterFlowTheme.of(context).error,
                        ),
                      );
                      // turn_off_response
                      _model.aiResponding = false;
                      safeSetState(() {});
                    }

                    await Future.delayed(const Duration(milliseconds: 800));
                    await _model.listViewController?.animateTo(
                      _model.listViewController!.position.maxScrollExtent,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.ease,
                    );

                    safeSetState(() {});
                  },
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Container(
                width: 100.0,
                height: 60.0,
                decoration: BoxDecoration(),
              ),
          ],
        ),
      ),
    );
  }
}
