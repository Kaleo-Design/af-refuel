import '/components/forms/form_comment_simple/form_comment_simple_widget.dart';
import '/components/ui_elements/ui_comment/ui_comment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'section_commenting_model.dart';
export 'section_commenting_model.dart';

class SectionCommentingWidget extends StatefulWidget {
  const SectionCommentingWidget({super.key});

  @override
  State<SectionCommentingWidget> createState() =>
      _SectionCommentingWidgetState();
}

class _SectionCommentingWidgetState extends State<SectionCommentingWidget> {
  late SectionCommentingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SectionCommentingModel());

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
      width: 400.0,
      constraints: BoxConstraints(
        maxHeight: 600.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Comments',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.close_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(
                0,
                12.0,
                0,
                0,
              ),
              scrollDirection: Axis.vertical,
              children: [
                wrapWithModel(
                  model: _model.uiCommentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UiCommentWidget(
                    moreAction: () async {},
                    sendAction: () async {},
                  ),
                ),
              ],
            ),
          ),
          wrapWithModel(
            model: _model.formCommentSimpleModel,
            updateCallback: () => safeSetState(() {}),
            child: FormCommentSimpleWidget(
              sendAction: () async {},
            ),
          ),
        ],
      ),
    );
  }
}
