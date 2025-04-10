import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'nav_ai_chat_model.dart';
export 'nav_ai_chat_model.dart';

class NavAiChatWidget extends StatefulWidget {
  const NavAiChatWidget({super.key});

  @override
  State<NavAiChatWidget> createState() => _NavAiChatWidgetState();
}

class _NavAiChatWidgetState extends State<NavAiChatWidget>
    with TickerProviderStateMixin {
  late NavAiChatModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavAiChatModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1600.0.ms,
            color: FlutterFlowTheme.of(context).accent1,
            angle: 0.524,
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
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
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
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: FlutterFlowTheme.of(context).accent1,
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).tertiary,
                FlutterFlowTheme.of(context).primary
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).accent1,
              width: 2.0,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                FFIcons.kedit04,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 28.0,
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
