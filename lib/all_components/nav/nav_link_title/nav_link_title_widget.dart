import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'nav_link_title_model.dart';
export 'nav_link_title_model.dart';

class NavLinkTitleWidget extends StatefulWidget {
  const NavLinkTitleWidget({
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
  State<NavLinkTitleWidget> createState() => _NavLinkTitleWidgetState();
}

class _NavLinkTitleWidgetState extends State<NavLinkTitleWidget> {
  late NavLinkTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavLinkTitleModel());

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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
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
              if (!widget.showTag)
                Icon(
                  Icons.chevron_right_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
