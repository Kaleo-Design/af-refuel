import '/all_components/nav/nav_item/nav_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'nav_custom_model.dart';
export 'nav_custom_model.dart';

class NavCustomWidget extends StatefulWidget {
  const NavCustomWidget({
    super.key,
    required this.selectedNavParameter,
  });

  final int? selectedNavParameter;

  @override
  State<NavCustomWidget> createState() => _NavCustomWidgetState();
}

class _NavCustomWidgetState extends State<NavCustomWidget> {
  late NavCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavCustomModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedNav = widget.selectedNavParameter;
      safeSetState(() {});
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
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        topLeft: Radius.circular(12.0),
        topRight: Radius.circular(12.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 8.0,
          sigmaY: 8.0,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
          child: Container(
            width: double.infinity,
            height: 88.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.0,
                  color: FlutterFlowTheme.of(context).accent4,
                  offset: Offset(
                    0.0,
                    -1.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navItemModel1,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: NavItemWidget(
                        icon: Icon(
                          FFIcons.kcalendarCheck02,
                          color: widget.selectedNavParameter == 1
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                        ),
                        lable: 'Today',
                        selected: widget.selectedNavParameter == 1,
                        action: () async {
                          context.goNamed(
                            MainHomeWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navItemModel2,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: NavItemWidget(
                        icon: Icon(
                          FFIcons.kpieChart01,
                          color: widget.selectedNavParameter == 2
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                        ),
                        lable: 'Analyze',
                        selected: widget.selectedNavParameter == 2,
                        action: () async {
                          context.goNamed(
                            MainTrackWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navItemModel3,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: NavItemWidget(
                        icon: Icon(
                          FFIcons.kmessageChatSquare,
                          color: widget.selectedNavParameter == 3
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                        ),
                        lable: 'Engage',
                        selected: widget.selectedNavParameter == 3,
                        action: () async {
                          context.goNamed(
                            MainChatWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 300),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navItemModel4,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: NavItemWidget(
                        icon: Icon(
                          FFIcons.kbookOpen01,
                          color: widget.selectedNavParameter == 4
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                        ),
                        lable: 'Content',
                        selected: widget.selectedNavParameter == 4,
                        action: () async {
                          context.goNamed(
                            MainDiscoverWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navItemModel5,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: NavItemWidget(
                        icon: Icon(
                          FFIcons.kuserCircle,
                          color: widget.selectedNavParameter == 5
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                        ),
                        lable: 'Profile',
                        selected: widget.selectedNavParameter == 5,
                        action: () async {
                          context.pushNamed(
                            MainProfileWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
