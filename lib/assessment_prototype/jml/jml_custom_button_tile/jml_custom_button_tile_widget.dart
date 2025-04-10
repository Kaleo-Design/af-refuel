import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'jml_custom_button_tile_model.dart';
export 'jml_custom_button_tile_model.dart';

class JmlCustomButtonTileWidget extends StatefulWidget {
  const JmlCustomButtonTileWidget({
    super.key,
    required this.jmlItemData,
  });

  final JmlWrapperStruct? jmlItemData;

  @override
  State<JmlCustomButtonTileWidget> createState() =>
      _JmlCustomButtonTileWidgetState();
}

class _JmlCustomButtonTileWidgetState extends State<JmlCustomButtonTileWidget> {
  late JmlCustomButtonTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JmlCustomButtonTileModel());

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
        HapticFeedback.mediumImpact();
        await launchURL(widget.jmlItemData!.buttonUrl);
      },
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.jmlItemData?.buttonColor,
              FlutterFlowTheme.of(context).primary,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.jmlItemData?.buttonTitle,
                          'Undefined',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                      if (valueOrDefault<bool>(
                        widget.jmlItemData?.buttonSubtitle != null &&
                            widget.jmlItemData?.buttonSubtitle != '',
                        false,
                      ))
                        Opacity(
                          opacity: 0.75,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.jmlItemData?.buttonSubtitle,
                                'Undefined info',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Icon(
                  FFIcons.karrowUpRight,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
