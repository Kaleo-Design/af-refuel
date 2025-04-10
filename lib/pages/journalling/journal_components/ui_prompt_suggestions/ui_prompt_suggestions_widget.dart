import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_prompt_suggestions_model.dart';
export 'ui_prompt_suggestions_model.dart';

class UiPromptSuggestionsWidget extends StatefulWidget {
  const UiPromptSuggestionsWidget({
    super.key,
    String? title,
    String? description,
  })  : this.title = title ?? 'Prompt',
        this.description = description ?? 'Description';

  final String title;
  final String description;

  @override
  State<UiPromptSuggestionsWidget> createState() =>
      _UiPromptSuggestionsWidgetState();
}

class _UiPromptSuggestionsWidgetState extends State<UiPromptSuggestionsWidget> {
  late UiPromptSuggestionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiPromptSuggestionsModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).overlay30,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
                AutoSizeText(
                  '\"${widget.description}\"'.maybeHandleOverflow(
                    maxChars: 60,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  minFontSize: 8.0,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                        fontStyle: FontStyle.italic,
                      ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
