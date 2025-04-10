import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'nav_link_settings_model.dart';
export 'nav_link_settings_model.dart';

class NavLinkSettingsWidget extends StatefulWidget {
  const NavLinkSettingsWidget({
    super.key,
    String? title,
    String? subtitle,
    String? tag,
    bool? showTag,
  })  : this.title = title ?? 'Deployment',
        this.subtitle = subtitle ?? 'Manage your deployment settings here.',
        this.tag = tag ?? '3 Day Streak',
        this.showTag = showTag ?? false;

  final String title;
  final String subtitle;
  final String tag;
  final bool showTag;

  @override
  State<NavLinkSettingsWidget> createState() => _NavLinkSettingsWidgetState();
}

class _NavLinkSettingsWidgetState extends State<NavLinkSettingsWidget> {
  late NavLinkSettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavLinkSettingsModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).alternate,
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    widget.subtitle,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
              if (widget.showTag)
                wrapWithModel(
                  model: _model.uiTagModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UiTagWidget(
                    title: widget.tag,
                    accentColor: FlutterFlowTheme.of(context).success30,
                    primaryColor: FlutterFlowTheme.of(context).success,
                    height: 32.0,
                  ),
                ),
              Divider(
                height: 12.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Preference',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Suggestion',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 300.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Builder(
                          builder: (context) {
                            final feedback = ContentFeedback.values
                                .toList()
                                .take(3)
                                .toList();

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(feedback.length,
                                  (feedbackIndex) {
                                final feedbackItem = feedback[feedbackIndex];
                                return Expanded(
                                  child: Container(
                                    width: 44.0,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          if (feedbackItem ==
                                              ContentFeedback.not_for_me) {
                                            return Icon(
                                              FFIcons.kthumbsDown,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          } else if (feedbackItem ==
                                              ContentFeedback.liked_it) {
                                            return Icon(
                                              FFIcons.kthumbsUp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          } else {
                                            return Icon(
                                              FFIcons.kheart,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              }).divide(SizedBox(width: 2.0)),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 300.0,
                      height: 44.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Builder(
                          builder: (context) {
                            final feedback = ContentFeedback.values
                                .where((e) =>
                                    (e != ContentFeedback.not_for_me) ||
                                    (e != ContentFeedback.liked_it) ||
                                    (e != ContentFeedback.loved_it))
                                .toList();

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(feedback.length,
                                  (feedbackIndex) {
                                final feedbackItem = feedback[feedbackIndex];
                                return Expanded(
                                  child: Container(
                                    width: 44.0,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          if (feedbackItem ==
                                              ContentFeedback.suggest_more) {
                                            return Icon(
                                              FFIcons.kfilePlus01,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          } else if (feedbackItem ==
                                              ContentFeedback.suggest_less) {
                                            return Icon(
                                              FFIcons.kfileMinus02,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          } else {
                                            return Icon(
                                              FFIcons.kxClose,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              }).divide(SizedBox(width: 2.0)),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
