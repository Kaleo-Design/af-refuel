import '/all_components/cards/card_article/card_article_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_workout/card_workout_widget.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'sub_wiki_one_model.dart';
export 'sub_wiki_one_model.dart';

class SubWikiOneWidget extends StatefulWidget {
  const SubWikiOneWidget({super.key});

  static String routeName = 'sub_wiki_one';
  static String routePath = '/subWikiOne';

  @override
  State<SubWikiOneWidget> createState() => _SubWikiOneWidgetState();
}

class _SubWikiOneWidgetState extends State<SubWikiOneWidget> {
  late SubWikiOneModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubWikiOneModel());

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
          title: Text(
            'Get Started',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
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
                          'https://images.unsplash.com/photo-1628191013085-990d39ec25b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyM3x8ZmFtaWx5fGVufDB8fHx8MTc0MTc0NjczNnww&ixlib=rb-4.0.3&q=80&w=1080',
                          width: double.infinity,
                          height: 230.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          '5-Minute Morning Routine for Mission Readiness',
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
                                    'This quick, efficient morning routine is designed to prime your body and mind for peak performance, whether you\'re heading into PT, training, or a challenging day ahead. It\'s focused on building readiness through simple but targeted.',
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
                                        text: 'Step by Step',
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
                                    children: [
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Tactical Breathing (1 minute) ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\nUse Box Breathing (4-4-4-4): Inhale for 4 counts, hold for 4 counts, exhale for 4 counts, hold for 4 counts. \n\nFocus on deep, slow breaths to calm your system and sharpen focus. ',
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
                                              ),
                                        ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Standing Stretches (2 minutes) ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\nTarget: Hips, hamstrings, shoulders (key tension areas that impact movement and posture). \n\nExample sequence:  \nReach for toes to stretch hamstrings. \nArm circles and shoulder rolls for upper body. \nHip circles and dynamic lunges to open hips. ',
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
                                              ),
                                        ),
                                      ),
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Pushups & Mobility Flow (2 minutes) ',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n\nPushups: As many slow, controlled reps as possible in 1 minute (even if it\'s only a few). \n\nMobility Flow: Finish with dynamic movements like world’s greatest stretch, spiderman stretch, or downward dog to cobra flow to open the whole body and engage muscles. ',
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
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
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
                          'Related Content Suggestions',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 130.0,
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
                                  title:
                                      'Tactical Breathing for Stress Control',
                                  typeIcon: Icon(
                                    FFIcons.krecording01,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  type: 'Audio',
                                  description: ' ',
                                  image:
                                      'https://images.unsplash.com/photo-1713428856219-20e151269843?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJyZWF0aHdvcmt8ZW58MHx8MHx8fDA%3D',
                                  showDescription: false,
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
                                      'Quick Recovery Stretches Post Training',
                                  typeIcon: Icon(
                                    FFIcons.kvideoRecorder,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                  type: 'Video',
                                  description: ' ',
                                  image:
                                      'https://images.unsplash.com/photo-1607914660217-754fdd90041d?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RyZXRjaGluZ3xlbnwwfHwwfHx8MA%3D%3D',
                                  showDescription: false,
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
                                  title: 'What Does Readiness Mean to You?\"',
                                  subtitleOne: 'Journal Prompt',
                                  image:
                                      'https://images.unsplash.com/photo-1553969546-6f7388a7e07c?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJ1bm5pbmd8ZW58MHx8MHx8fDA%3D',
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
