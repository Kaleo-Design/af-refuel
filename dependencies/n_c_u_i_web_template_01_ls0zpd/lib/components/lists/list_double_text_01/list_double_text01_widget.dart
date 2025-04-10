import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_double_text01_model.dart';
export 'list_double_text01_model.dart';

class ListDoubleText01Widget extends StatefulWidget {
  const ListDoubleText01Widget({
    super.key,
    String? title,
    this.description,
    String? list01,
    String? text,
    this.accentColor,
    this.fillColor,
    String? list02,
    this.listAction,
  })  : this.title = title ?? 'List Item',
        this.list01 = list01 ?? 'Date',
        this.text = text ?? 'Active',
        this.list02 = list02 ?? '\$5.60';

  final String title;
  final String? description;
  final String list01;
  final String text;
  final Color? accentColor;
  final Color? fillColor;
  final String list02;
  final Future Function()? listAction;

  @override
  State<ListDoubleText01Widget> createState() => _ListDoubleText01WidgetState();
}

class _ListDoubleText01WidgetState extends State<ListDoubleText01Widget> {
  late ListDoubleText01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListDoubleText01Model());

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
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 1600.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget!.title,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.description,
                          'This is really great',
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text(
                widget!.list01,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    wrapWithModel(
                      model: _model.tagGenericModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TagGenericWidget(
                        text: widget!.text,
                        accentColor: widget!.accentColor,
                        fillColor: widget!.fillColor,
                      ),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Text(
                widget!.list02,
                textAlign: TextAlign.end,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
