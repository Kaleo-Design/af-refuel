import '/all_components/ui_components/indicator_new/indicator_new_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'chat_recent_model.dart';
export 'chat_recent_model.dart';

class ChatRecentWidget extends StatefulWidget {
  const ChatRecentWidget({
    super.key,
    this.chat,
    this.isRead,
  });

  final ChatMessagesStruct? chat;
  final bool? isRead;

  @override
  State<ChatRecentWidget> createState() => _ChatRecentWidgetState();
}

class _ChatRecentWidgetState extends State<ChatRecentWidget> {
  late ChatRecentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatRecentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 36.0,
              height: 36.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  '16',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'March, 16th',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      if (!widget.isRead!)
                        wrapWithModel(
                          model: _model.indicatorNewModel,
                          updateCallback: () => safeSetState(() {}),
                          child: IndicatorNewWidget(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Text(
                    'Hey Adam, I was wondering if this could be accomplished? We will need to update the comment for design.',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)).addToEnd(SizedBox(height: 8.0)),
              ),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
