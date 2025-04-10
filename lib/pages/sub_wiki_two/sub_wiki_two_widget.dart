import '/all_components/cards/card_article/card_article_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_workout/card_workout_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'sub_wiki_two_model.dart';
export 'sub_wiki_two_model.dart';

class SubWikiTwoWidget extends StatefulWidget {
  const SubWikiTwoWidget({super.key});

  static String routeName = 'sub_wiki_two';
  static String routePath = '/subWikiTwo';

  @override
  State<SubWikiTwoWidget> createState() => _SubWikiTwoWidgetState();
}

class _SubWikiTwoWidgetState extends State<SubWikiTwoWidget> {
  late SubWikiTwoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubWikiTwoModel());

    _model.descriptionExpandableController =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1585577529540-a8095ea25427?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyM3x8c2xlZXB8ZW58MHx8fHwxNzQxODExMjk3fDA&ixlib=rb-4.0.3&q=80&w=1080',
                          width: double.infinity,
                          height: 230.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Guided Tactical Sleep Drill',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Jan. 1st, 2025',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'Readiness',
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
                          Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent2,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'Discipline',
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
                        ]
                            .divide(SizedBox(width: 8.0))
                            .addToStart(SizedBox(width: 16.0))
                            .addToEnd(SizedBox(width: 16.0)),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          color: Color(0x00000000),
                          child: ExpandableNotifier(
                            controller: _model.descriptionExpandableController,
                            child: ExpandablePanel(
                              header: Text(
                                'Description',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              collapsed: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Wind down with this quick and effective sleep preparation routine designed to help you reset, recover, and wake up ready for tomorrow’s mission. ',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              expanded: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Expanded body text',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          color: Color(0x8A000000),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                                expandIcon: FFIcons.kplus,
                                collapseIcon: FFIcons.kminus,
                                iconSize: 20.0,
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              controller: _model.expandableExpandableController,
                              child: ExpandablePanel(
                                header: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Steps to complete',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: '  (total time: 5 mins)',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Figtree',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                collapsed: Container(
                                  width: 100.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                expanded: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 4.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '1. Breathe',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nComplete 5 rounds of 4-7-8 tactical breathing to calm your body and mind. ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '2. Visualize',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nPerform a full-body scan, relaxing each muscle group from head to toe.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '3. Commit',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\nSet a clear intention for restful recovery, focusing on one reason to recharge for tomorrow. ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Why This Matters',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'This drill is designed to ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  'lower stress, regulate your nervous system, ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Figtree',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                            ),
                                            TextSpan(
                                              text:
                                                  'and prepare your mind and body for deeper, more restorative sleep—essential for peak performance and mental readiness. ',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 12.0))
                                        .addToEnd(SizedBox(height: 12.0)),
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: true,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: FFIcons.kplus,
                                  collapseIcon: FFIcons.kminus,
                                  iconSize: 20.0,
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Explore More (related tools):',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: ListView(
                          padding: EdgeInsets.fromLTRB(
                            16.0,
                            0,
                            16.0,
                            0,
                          ),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: wrapWithModel(
                                model: _model.cardArticleModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: CardArticleWidget(
                                  width: 320.0,
                                  title: 'Track Your Wake-Up Energy for 7 Days',
                                  typeIcon: Icon(
                                    FFIcons.kactivityHeart,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  type: 'Routine',
                                  description:
                                      'See how better sleep impacts your daily energy. ',
                                  image:
                                      'https://images.unsplash.com/photo-1552650272-b8a34e21bc4b?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c2xlZXB8ZW58MHx8MHx8fDA%3D',
                                  showDescription: true,
                                  subText: '8 mins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: wrapWithModel(
                                model: _model.cardArticleModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CardArticleWidget(
                                  width: 320.0,
                                  title:
                                      'Nutrition and Sleep: What to Eat Before Bed',
                                  typeIcon: Icon(
                                    FFIcons.kfile06,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  type: 'Article',
                                  description:
                                      'Learn how food choices can help or hurt your recovery. ',
                                  image:
                                      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
                                  showDescription: true,
                                  subText: '4 mins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: wrapWithModel(
                                model: _model.cardArticleModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: CardArticleWidget(
                                  width: 320.0,
                                  title: 'Pre-Bed Mobility Flow',
                                  typeIcon: Icon(
                                    FFIcons.kfile06,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  type: 'Article',
                                  description:
                                      'A quick stretch to reduce tension and improve sleep quality. \n',
                                  image:
                                      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
                                  showDescription: true,
                                  subText: '4 mins',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: wrapWithModel(
                                model: _model.cardWorkoutModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CardWorkoutWidget(
                                  width: 300.0,
                                  title:
                                      'Nutrition and Sleep: What to Eat Before Bed',
                                  subtitleOne: '7 min read',
                                  image:
                                      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8fDA%3D',
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 12.0))
                        .addToEnd(SizedBox(height: 80.0)),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
