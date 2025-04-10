import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'nav_item_model.dart';
export 'nav_item_model.dart';

class NavItemWidget extends StatefulWidget {
  const NavItemWidget({
    super.key,
    this.icon,
    required this.lable,
    required this.selected,
    required this.action,
  });

  final Widget? icon;
  final String? lable;
  final bool? selected;
  final Future Function()? action;

  @override
  State<NavItemWidget> createState() => _NavItemWidgetState();
}

class _NavItemWidgetState extends State<NavItemWidget>
    with TickerProviderStateMixin {
  late NavItemModel _model;

  var hasTextTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavItemModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
      'textOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
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
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            if (animationsMap['iconOnActionTriggerAnimation'] != null) {
              animationsMap['iconOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0);
            }
            if (animationsMap['textOnActionTriggerAnimation'] != null) {
              safeSetState(() => hasTextTriggered = true);
              SchedulerBinding.instance.addPostFrameCallback((_) async =>
                  animationsMap['textOnActionTriggerAnimation']!
                      .controller
                      .forward(from: 0.0));
            }
            await widget.action?.call();
          },
          child: Container(
            constraints: BoxConstraints(
              minWidth: 64.0,
              minHeight: 44.0,
            ),
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon!.animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation']!,
                ),
                AnimatedDefaultTextStyle(
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Figtree',
                        color: widget.selected!
                            ? FlutterFlowTheme.of(context).primaryText
                            : FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  child: Text(
                    valueOrDefault<String>(
                      widget.lable,
                      'Act',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ).animateOnActionTrigger(
                    animationsMap['textOnActionTriggerAnimation']!,
                    hasBeenTriggered: hasTextTriggered),
              ]
                  .divide(SizedBox(height: 4.0))
                  .addToStart(SizedBox(height: 8.0))
                  .addToEnd(SizedBox(height: 8.0)),
            ),
          ),
        ),
      ],
    );
  }
}
