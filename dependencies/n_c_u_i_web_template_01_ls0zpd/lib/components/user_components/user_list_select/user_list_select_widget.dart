import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_list_select_model.dart';
export 'user_list_select_model.dart';

class UserListSelectWidget extends StatefulWidget {
  const UserListSelectWidget({
    super.key,
    required this.image,
    required this.title,
    required this.id,
    required this.subtitle,
    required this.selected,
    required this.action,
  });

  final String? image;
  final String? title;
  final String? id;
  final String? subtitle;
  final bool? selected;
  final Future Function()? action;

  @override
  State<UserListSelectWidget> createState() => _UserListSelectWidgetState();
}

class _UserListSelectWidgetState extends State<UserListSelectWidget>
    with TickerProviderStateMixin {
  late UserListSelectModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserListSelectModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selected = widget!.selected!;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
      ),
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
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (_model.selected) {
          // unselect_list
          _model.selected = false;
          safeSetState(() {});
        } else {
          // select_list
          _model.selected = true;
          safeSetState(() {});
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: double.infinity,
        decoration: BoxDecoration(
          color: _model.selected
              ? FlutterFlowTheme.of(context).accent1
              : FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(valueOrDefault<double>(
            FFAppConstants.sizeSmall.toDouble(),
            0.0,
          )),
          border: Border.all(
            color: _model.selected
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.userInfoModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: UserInfoWidget(
                    showName: true,
                    name: widget!.title,
                    subTitle: widget!.subtitle,
                    avatar: widget!.image,
                    imageSize: 36,
                    titleColor: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
              ),
              if (!_model.selected)
                Icon(
                  Icons.check_box_outline_blank_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              if (_model.selected)
                Icon(
                  Icons.check_circle_outline_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
