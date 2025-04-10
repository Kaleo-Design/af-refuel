import '/all_components/modals/modal_note/modal_note_widget.dart';
import '/all_components/modals/modal_simple/modal_simple_widget.dart';
import '/all_components/ui_components/ui_7_day_streak/ui7_day_streak_widget.dart';
import '/all_components/ui_components/ui_feedback_bar/ui_feedback_bar_widget.dart';
import '/all_components/view_timer/view_timer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/components/ui_elements/tag_action/tag_action_widget.dart'
    as n_c_u_i_web_template_01_ls0zpd;
import 'package:n_c_u_i_web_template_01_ls0zpd/components/ui_elements/tag_generic/tag_generic_widget.dart'
    as n_c_u_i_web_template_01_ls0zpd;
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/flutter_flow_util.dart'
    as n_c_u_i_web_template_01_ls0zpd_util
    show wrapWithModel, createModel, FlutterFlowDynamicModels;
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'sub_activity_details_model.dart';
export 'sub_activity_details_model.dart';

class SubActivityDetailsWidget extends StatefulWidget {
  const SubActivityDetailsWidget({super.key});

  static String routeName = 'sub_activity_details';
  static String routePath = '/subActivityDetails';

  @override
  State<SubActivityDetailsWidget> createState() =>
      _SubActivityDetailsWidgetState();
}

class _SubActivityDetailsWidgetState extends State<SubActivityDetailsWidget> {
  late SubActivityDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubActivityDetailsModel());

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
            'Activity Details',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 8.0, 6.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).accent4,
                borderRadius: 8.0,
                borderWidth: 2.0,
                fillColor: FlutterFlowTheme.of(context).overlay30,
                icon: Icon(
                  FFIcons.ksettings03,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 8.0, 6.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).accent4,
                borderRadius: 8.0,
                borderWidth: 2.0,
                fillColor: FlutterFlowTheme.of(context).overlay30,
                icon: Icon(
                  FFIcons.kclockRewind,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
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
                      Container(
                        width: double.infinity,
                        height: 270.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              'https://images.unsplash.com/photo-1599981819329-31f250c3bc75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx0aW1lcnxlbnwwfHx8fDE3MzkyMjA3ODZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            ).image,
                          ),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 100.0,
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
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The Pomodoro Technique',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    n_c_u_i_web_template_01_ls0zpd_util
                                        .wrapWithModel(
                                      model: _model.tagGenericModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: n_c_u_i_web_template_01_ls0zpd
                                          .TagGenericWidget(
                                        text: 'Track',
                                        accentColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    n_c_u_i_web_template_01_ls0zpd_util
                                        .wrapWithModel(
                                      model: _model.tagActionModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: n_c_u_i_web_template_01_ls0zpd
                                          .TagActionWidget(
                                        text: 'Add Note',
                                        accentColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        icon: Icon(
                                          FFIcons.kfilePlus02,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                        action: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            barrierColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: ModalNoteWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                      ),
                                    ),
                                    n_c_u_i_web_template_01_ls0zpd_util
                                        .wrapWithModel(
                                      model: _model.tagGenericModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: n_c_u_i_web_template_01_ls0zpd
                                          .TagGenericWidget(
                                        text: 'Improve Focus',
                                        accentColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          color: Color(0x00000000),
                          child: ExpandableNotifier(
                            controller: _model.expandableExpandableController,
                            child: ExpandablePanel(
                              header: Text(
                                'What is the Pomodoro Technique?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              collapsed: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Read more',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Figtree',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              expanded: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'The Pomodoro Technique is a proven time management method designed to help you work smarter, not harder. By breaking your work into 25-minute focus sessions followed by 5-minute breaks, it encourages sustained focus, prevents burnout, and enhances productivity.\n\nThis method is particularly effective for tackling large projects or tasks that feel overwhelming, as it helps you stay engaged while also building a sense of progress through small, manageable chunks of time.',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: true,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                hasIcon: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: wrapWithModel(
                          model: _model.ui7DayStreakModel,
                          updateCallback: () => safeSetState(() {}),
                          child: Ui7DayStreakWidget(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Ideas to accomplish it:',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Set a timer for 25 minutes and choose one specific task to focus on.\n\nTurn off all notifications and silence your phone to avoid interruptions.',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor:
                                  FlutterFlowTheme.of(context).accent4,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalSimpleWidget(
                                      title: 'Pomodor Timer',
                                      subtitle:
                                          'Utilize the timer below to help you focus on a simple task and set boundaries.',
                                      maxHeight: 800.0,
                                      widgetContent: () => ViewTimerWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Start Timer',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 48.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            hoverColor: FlutterFlowTheme.of(context).accent1,
                            hoverBorderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            hoverTextColor:
                                FlutterFlowTheme.of(context).primaryText,
                            hoverElevation: 0.0,
                          ),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 8.0))
                        .addToEnd(SizedBox(height: 100.0)),
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
