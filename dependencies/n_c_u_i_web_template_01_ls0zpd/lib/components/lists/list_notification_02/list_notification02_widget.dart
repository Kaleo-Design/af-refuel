import '/components/user_components/user_avatar/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_notification02_model.dart';
export 'list_notification02_model.dart';

class ListNotification02Widget extends StatefulWidget {
  const ListNotification02Widget({
    super.key,
    this.unread,
    this.title,
    String? description,
    String? subTItle,
    required this.userAvatar,
  })  : this.description = description ?? 'I did a thing here.',
        this.subTItle = subTItle ?? 'July, 8th @ 2:30pm';

  final bool? unread;
  final String? title;
  final String description;
  final String subTItle;
  final String? userAvatar;

  @override
  State<ListNotification02Widget> createState() =>
      _ListNotification02WidgetState();
}

class _ListNotification02WidgetState extends State<ListNotification02Widget> {
  late ListNotification02Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListNotification02Model());

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
          color: widget!.unread!
              ? FlutterFlowTheme.of(context).secondaryBackground
              : FlutterFlowTheme.of(context).primaryBackground,
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
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.userAvatarModel,
                updateCallback: () => safeSetState(() {}),
                child: UserAvatarWidget(
                  size: 32,
                  image: widget!.userAvatar,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget!.title,
                            'Andrew Hernandez',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.subTItle,
                            'Jan. 28th, 4:30pm',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.description,
                          '--',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget!.unread ?? true)
                Opacity(
                  opacity: widget!.unread! ? 1.0 : 0.4,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.0,
                            color: FlutterFlowTheme.of(context).accent2,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                            spreadRadius: 2.0,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                    ),
                  ),
                ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
