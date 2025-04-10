import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_day_item_model.dart';
export 'ui_day_item_model.dart';

class UiDayItemWidget extends StatefulWidget {
  const UiDayItemWidget({
    super.key,
    required this.radius,
    double? size,
    double? opacity,
  })  : this.size = size ?? 44.0,
        this.opacity = opacity ?? 1.0;

  final double? radius;
  final double size;
  final double opacity;

  @override
  State<UiDayItemWidget> createState() => _UiDayItemWidgetState();
}

class _UiDayItemWidgetState extends State<UiDayItemWidget> {
  late UiDayItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiDayItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Opacity(
        opacity: widget.opacity,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            borderRadius: BorderRadius.circular(valueOrDefault<double>(
              widget.radius,
              0.0,
            )),
            border: Border.all(
              color: FlutterFlowTheme.of(context).accent1,
              width: 1.0,
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
