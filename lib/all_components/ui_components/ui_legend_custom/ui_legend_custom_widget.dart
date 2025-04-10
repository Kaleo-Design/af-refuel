import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ui_legend_custom_model.dart';
export 'ui_legend_custom_model.dart';

class UiLegendCustomWidget extends StatefulWidget {
  const UiLegendCustomWidget({
    super.key,
    required this.piller,
    this.showSubText,
  });

  final PillerStruct? piller;
  final bool? showSubText;

  @override
  State<UiLegendCustomWidget> createState() => _UiLegendCustomWidgetState();
}

class _UiLegendCustomWidgetState extends State<UiLegendCustomWidget> {
  late UiLegendCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiLegendCustomModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FFAppState().selectedPillar == widget.piller
            ? valueOrDefault<Color>(
                widget.piller?.accent1,
                FlutterFlowTheme.of(context).accent1,
              )
            : FlutterFlowTheme.of(context).overlay0,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FFAppState().selectedPillar == widget.piller
              ? valueOrDefault<Color>(
                  widget.piller?.accent1,
                  FlutterFlowTheme.of(context).accent1,
                )
              : FlutterFlowTheme.of(context).overlay0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 16.0,
              height: 16.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.piller?.primaryColor,
                  FlutterFlowTheme.of(context).primary,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.piller?.pillar,
                    'Spiritual',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
                if ((widget.showSubText ?? true) &&
                    responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                  Text(
                    '${valueOrDefault<String>(
                      formatNumber(
                        widget.piller?.pillerBreakdown,
                        formatType: FormatType.compact,
                      ),
                      '0',
                    )} points',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
              ],
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
