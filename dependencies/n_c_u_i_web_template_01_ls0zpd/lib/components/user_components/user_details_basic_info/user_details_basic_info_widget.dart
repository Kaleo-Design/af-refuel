import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_avatar/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_details_basic_info_model.dart';
export 'user_details_basic_info_model.dart';

class UserDetailsBasicInfoWidget extends StatefulWidget {
  const UserDetailsBasicInfoWidget({
    super.key,
    String? image,
    this.sectionTitle,
  }) : this.image = image ?? 'Image';

  final String image;
  final String? sectionTitle;

  @override
  State<UserDetailsBasicInfoWidget> createState() =>
      _UserDetailsBasicInfoWidgetState();
}

class _UserDetailsBasicInfoWidgetState
    extends State<UserDetailsBasicInfoWidget> {
  late UserDetailsBasicInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsBasicInfoModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.sectionTitle,
                  'Section Title',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.userAvatarModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: UserAvatarWidget(
                      size: 64,
                      image: widget!.image,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Text(
                            'Jeremiah Fears',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            'Manager',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Status',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.tagGenericModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: TagGenericWidget(
                      text: 'Active',
                      accentColor: FlutterFlowTheme.of(context).accent1,
                      fillColor: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Notifications',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.tagGenericModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: TagGenericWidget(
                      text: 'Off',
                      accentColor: FlutterFlowTheme.of(context).warning,
                      fillColor: FlutterFlowTheme.of(context).error,
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Created',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Jan, 12th 2024',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: ', ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: '4:00pm',
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Verified',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Verified',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Phone',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 4.0),
                      child: Text(
                        '+1 (234) 567-8901',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Onboarding',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Complete',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ].addToStart(SizedBox(height: 16.0)).addToEnd(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
