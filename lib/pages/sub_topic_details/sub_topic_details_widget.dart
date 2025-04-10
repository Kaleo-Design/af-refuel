import '/all_components/cards/card_article/card_article_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'sub_topic_details_model.dart';
export 'sub_topic_details_model.dart';

class SubTopicDetailsWidget extends StatefulWidget {
  const SubTopicDetailsWidget({super.key});

  static String routeName = 'sub_topic_details';
  static String routePath = '/subTopicDetails';

  @override
  State<SubTopicDetailsWidget> createState() => _SubTopicDetailsWidgetState();
}

class _SubTopicDetailsWidgetState extends State<SubTopicDetailsWidget> {
  late SubTopicDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubTopicDetailsModel());

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
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 330.0,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1438232992991-995b7058bbb3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxjaHVyY2h8ZW58MHx8fHwxNzQxNzQxMzEwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).accent4,
                                FlutterFlowTheme.of(context).overlay0,
                                FlutterFlowTheme.of(context).overlay30,
                                FlutterFlowTheme.of(context).secondaryBackground
                              ],
                              stops: [0.0, 0.5, 0.75, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                          ),
                          child: SafeArea(
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .overlay30,
                                      borderRadius: 8.0,
                                      borderWidth: 2.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .overlay30,
                                      icon: Icon(
                                        FFIcons.karrowLeft,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'The Power of Spiritual Intimacy',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'Strengthening relationships through shared purpoase and meaning.',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent3,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'Relationships',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent3,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'Spiritual',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 8.0))
                          .addToStart(SizedBox(width: 16.0))
                          .addToEnd(SizedBox(width: 16.0)),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 8.0),
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Series breakdown',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.cardStatsModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CardStatsWidget(
                            title: 'Your Progress',
                            value: '2',
                            subValue: ' /8 lessons',
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            showIcon: false,
                            largeText: true,
                            description: 'none',
                            showDescription: false,
                            action: () async {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: LinearPercentIndicator(
                            percent: 0.25,
                            lineHeight: 12.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor:
                                FlutterFlowTheme.of(context).primaryText,
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryText30,
                            barRadius: Radius.circular(8.0),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ]
                          .divide(false
                              ? SizedBox(width: 0.0)
                              : SizedBox(height: 0.0))
                          .addToStart(false
                              ? SizedBox(width: 4.0)
                              : SizedBox(height: 4.0)),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'The first step in overcoming financial conflict in relationships is compromise.',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'In this series',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      4.0,
                      0,
                      16.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: wrapWithModel(
                          model: _model.cardArticleModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: CardArticleWidget(
                            width: double.infinity,
                            title: 'Pray/Meditate Together',
                            typeIcon: Icon(
                              FFIcons.kvideoRecorder,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            type: 'Video',
                            description:
                                'Learn the practice & discipline of prayer, practice this with your spouse or partner.',
                            image:
                                'https://images.unsplash.com/photo-1437603568260-1950d3ca6eab?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJheXxlbnwwfHwwfHx8MA%3D%3D',
                            showDescription: true,
                            subText: 'Lesson 1/8 • 5 mins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: wrapWithModel(
                          model: _model.cardArticleModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: CardArticleWidget(
                            width: double.infinity,
                            title: '5 Minute Prayer Challenge',
                            typeIcon: Icon(
                              FFIcons.kfileHeart02,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            type: 'Article',
                            description:
                                'Practice prayer for 5 minutes a day, 8/10 in a study said their mental health improved.',
                            image:
                                'https://images.unsplash.com/photo-1602677416440-51e91ddeef89?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHByYXl8ZW58MHx8MHx8fDA%3D',
                            showDescription: true,
                            subText: 'Lesson 2/8 • 7 mins',
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ]
                    .divide(SizedBox(height: 8.0))
                    .addToEnd(SizedBox(height: 82.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: wrapWithModel(
                  model: _model.uiFeedbackBarModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: UiFeedbackBarWidget(
                    isSaved: false,
                    isCompleted: false,
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
