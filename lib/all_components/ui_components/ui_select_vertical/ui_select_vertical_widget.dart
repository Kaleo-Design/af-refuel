import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_select_vertical_model.dart';
export 'ui_select_vertical_model.dart';

class UiSelectVerticalWidget extends StatefulWidget {
  const UiSelectVerticalWidget({
    super.key,
    this.text,
    this.icon,
    required this.isSelected,
    required this.action,
  });

  final String? text;
  final Widget? icon;
  final bool? isSelected;

  /// An action to update in the parent component.
  final Future Function()? action;

  @override
  State<UiSelectVerticalWidget> createState() => _UiSelectVerticalWidgetState();
}

class _UiSelectVerticalWidgetState extends State<UiSelectVerticalWidget> {
  late UiSelectVerticalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiSelectVerticalModel());

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
        _model.selectedState = !_model.selectedState;
        safeSetState(() {});
        await widget.action?.call();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _model.selectedState
              ? FlutterFlowTheme.of(context).accent1
              : FlutterFlowTheme.of(context).accent4,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: _model.selectedState
                ? FlutterFlowTheme.of(context).accent1
                : FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              widget.icon!,
              AutoSizeText(
                valueOrDefault<String>(
                  widget.text,
                  'Save',
                ).maybeHandleOverflow(
                  maxChars: 44,
                  replacement: '…',
                ),
                textAlign: TextAlign.center,
                minFontSize: 12.0,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
