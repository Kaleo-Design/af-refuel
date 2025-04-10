import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'card_large_activity_model.dart';
export 'card_large_activity_model.dart';

class CardLargeActivityWidget extends StatefulWidget {
  const CardLargeActivityWidget({
    super.key,
    String? imagebG,
    String? title,
    String? subtitle,
    String? tag,
  })  : this.imagebG = imagebG ??
            'https://images.unsplash.com/photo-1553969546-6f7388a7e07c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxydW5uaW5nfGVufDB8fHx8MTczODU5NDE1OHww&ixlib=rb-4.0.3&q=80&w=1080',
        this.title = title ?? 'Low Heart Rate Training',
        this.subtitle = subtitle ?? 'Improve physical fitness',
        this.tag = tag ?? '3 Day Streak';

  final String imagebG;
  final String title;
  final String subtitle;
  final String tag;

  @override
  State<CardLargeActivityWidget> createState() =>
      _CardLargeActivityWidgetState();
}

class _CardLargeActivityWidgetState extends State<CardLargeActivityWidget> {
  late CardLargeActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardLargeActivityModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 180.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(
              valueOrDefault<String>(
                widget.imagebG,
                'https://images.unsplash.com/photo-1553969546-6f7388a7e07c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxydW5uaW5nfGVufDB8fHx8MTczODU5NDE1OHww&ixlib=rb-4.0.3&q=80&w=1080',
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).overlay30,
                FlutterFlowTheme.of(context).secondaryBackground
              ],
              stops: [0.0, 0.8],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.uiTagModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: UiTagWidget(
                        title: widget.tag,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '3 miles',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Icon(
                      FFIcons.kroute,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.subtitle,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Figtree',
                              color: FlutterFlowTheme.of(context).success,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        widget.title,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(height: 4.0)),
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
