import '/assessment_prototype/jml/jml_custom_button_tile/jml_custom_button_tile_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'jml_item_render_model.dart';
export 'jml_item_render_model.dart';

class JmlItemRenderWidget extends StatefulWidget {
  const JmlItemRenderWidget({
    super.key,
    required this.renderType,
  });

  final JmlWrapperStruct? renderType;

  @override
  State<JmlItemRenderWidget> createState() => _JmlItemRenderWidgetState();
}

class _JmlItemRenderWidgetState extends State<JmlItemRenderWidget> {
  late JmlItemRenderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JmlItemRenderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.renderType?.type == JmlRenderType.h1) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Text(
              valueOrDefault<String>(
                widget.renderType?.textValue,
                'Undefined Title',
              ),
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
          );
        } else if (widget.renderType?.type == JmlRenderType.h2) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Text(
              valueOrDefault<String>(
                widget.renderType?.textValue,
                'Undefined Header',
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
          );
        } else if (widget.renderType?.type == JmlRenderType.p) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Text(
              valueOrDefault<String>(
                widget.renderType?.textValue,
                'Undefined text',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Figtree',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                  ),
            ),
          );
        } else if (widget.renderType?.type == JmlRenderType.img) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: Image.network(
              functions.convertImageUrlToPath(widget.renderType?.imageUrl)!,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.contain,
            ),
          );
        } else if (widget.renderType?.type == JmlRenderType.button) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
            child: wrapWithModel(
              model: _model.jmlCustomButtonTileModel,
              updateCallback: () => safeSetState(() {}),
              child: JmlCustomButtonTileWidget(
                jmlItemData: widget.renderType!,
              ),
            ),
          );
        } else {
          return Text(
            '- Undefined content -',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          );
        }
      },
    );
  }
}
