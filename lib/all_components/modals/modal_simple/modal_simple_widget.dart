import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'modal_simple_model.dart';
export 'modal_simple_model.dart';

class ModalSimpleWidget extends StatefulWidget {
  const ModalSimpleWidget({
    super.key,
    required this.widgetContent,
    String? title,
    String? subtitle,
    double? maxHeight,
  })  : this.title = title ?? 'Recent Chats',
        this.subtitle = subtitle ?? 'Please review the recent chats below.',
        this.maxHeight = maxHeight ?? 700.0;

  final Widget Function()? widgetContent;
  final String title;
  final String subtitle;
  final double maxHeight;

  @override
  State<ModalSimpleWidget> createState() => _ModalSimpleWidgetState();
}

class _ModalSimpleWidgetState extends State<ModalSimpleWidget> {
  late ModalSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalSimpleModel());

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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 0.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints(
            minHeight: 150.0,
            maxWidth: 770.0,
            maxHeight: widget.maxHeight,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x19101321),
                offset: Offset(
                  0.0,
                  -4.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: 64.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      widget.subtitle,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
              Expanded(
                child: Builder(builder: (_) {
                  return widget.widgetContent!();
                }),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Close',
                        options: FFButtonOptions(
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).accent4,
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).accent4,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: FlutterFlowTheme.of(context).alternate,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                          hoverElevation: 3.0,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ),
            ].divide(SizedBox(height: 12.0)).addToEnd(SizedBox(height: 44.0)),
          ),
        ),
      ),
    );
  }
}
