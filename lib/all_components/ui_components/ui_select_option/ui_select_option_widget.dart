import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_select_option_model.dart';
export 'ui_select_option_model.dart';

class UiSelectOptionWidget extends StatefulWidget {
  const UiSelectOptionWidget({
    super.key,
    this.text,
    this.icon,
    required this.isSelected,
    required this.action,
    this.fontSize,
  });

  final String? text;
  final Widget? icon;
  final bool? isSelected;

  /// An action to update in the parent component.
  final Future Function()? action;

  final double? fontSize;

  @override
  State<UiSelectOptionWidget> createState() => _UiSelectOptionWidgetState();
}

class _UiSelectOptionWidgetState extends State<UiSelectOptionWidget> {
  late UiSelectOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiSelectOptionModel());

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
        height: 44.0,
        decoration: BoxDecoration(
          color: _model.selectedState
              ? FlutterFlowTheme.of(context).accent1
              : FlutterFlowTheme.of(context).accent4,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: _model.selectedState
                ? FlutterFlowTheme.of(context).accent1
                : FlutterFlowTheme.of(context).accent4,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
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
                maxLines: 1,
                minFontSize: 12.0,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Figtree',
                      fontSize: valueOrDefault<double>(
                        widget.fontSize,
                        16.0,
                      ),
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
