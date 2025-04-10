import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'chat_bubbles_model.dart';
export 'chat_bubbles_model.dart';

class ChatBubblesWidget extends StatefulWidget {
  const ChatBubblesWidget({
    super.key,
    required this.chatDetails,
  });

  final ChatMessagesStruct? chatDetails;

  @override
  State<ChatBubblesWidget> createState() => _ChatBubblesWidgetState();
}

class _ChatBubblesWidgetState extends State<ChatBubblesWidget>
    with TickerProviderStateMixin {
  late ChatBubblesModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBubblesModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.chatDetails?.sender == ChatMessageTypes.ai)
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 1.0),
                        child: Text(
                          valueOrDefault<String>(
                            dateTimeFormat(
                                "relative", widget.chatDetails?.sentAt),
                            '2m ago',
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          width: 100.0,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.chatDetails?.content,
                    'No content',
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Figtree',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
          ),
        if (widget.chatDetails?.sender == ChatMessageTypes.user)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 1.0),
                      child: Text(
                        'me - ${valueOrDefault<String>(
                          dateTimeFormat(
                              "relative", widget.chatDetails?.sentAt),
                          '2m ago',
                        )}',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: 0.5,
                      child: Container(
                        width: 100.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.chatDetails?.content,
                  'No content',
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Figtree',
                      color: FlutterFlowTheme.of(context).primaryText50,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
      ]
          .divide(SizedBox(height: 8.0))
          .addToStart(SizedBox(height: 4.0))
          .addToEnd(SizedBox(height: 4.0)),
    );
  }
}
