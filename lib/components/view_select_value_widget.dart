import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'view_select_value_model.dart';
export 'view_select_value_model.dart';

class ViewSelectValueWidget extends StatefulWidget {
  const ViewSelectValueWidget({
    super.key,
    required this.options,
    this.selectedOption,
    this.maxHeight,
    this.title,
  });

  final List<String>? options;
  final List<String>? selectedOption;
  final double? maxHeight;
  final String? title;

  @override
  State<ViewSelectValueWidget> createState() => _ViewSelectValueWidgetState();
}

class _ViewSelectValueWidgetState extends State<ViewSelectValueWidget> {
  late ViewSelectValueModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewSelectValueModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedOptions = widget.selectedOption!.toList().cast<String>();
      safeSetState(() {});
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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: 150.0,
          maxWidth: 770.0,
          maxHeight: valueOrDefault<double>(
            widget.maxHeight,
            470.0,
          ),
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
                  width: 50.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Make a selection',
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: Builder(
                  builder: (context) {
                    final options = widget.options!.toList();

                    return ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        8.0,
                        0,
                        16.0,
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: options.length,
                      separatorBuilder: (_, __) => SizedBox(height: 8.0),
                      itemBuilder: (context, optionsIndex) {
                        final optionsItem = options[optionsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedOptions
                                  .contains(optionsItem)) {
                                // remove_from_list
                                _model.removeFromSelectedOptions(optionsItem);
                                safeSetState(() {});
                              } else {
                                // add_to_list
                                _model.addToSelectedOptions(optionsItem);
                                safeSetState(() {});
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 8.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      optionsItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    if (_model.selectedOptions
                                        .contains(optionsItem))
                                      Icon(
                                        FFIcons.kcheckCircleBroken,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context, _model.selectedOptions);
                },
                text: 'Save Selection',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).accent1,
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Figtree',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).primary,
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  hoverTextColor: FlutterFlowTheme.of(context).info,
                  hoverElevation: 3.0,
                ),
              ),
            ),
          ].addToEnd(SizedBox(height: 44.0)),
        ),
      ),
    );
  }
}
