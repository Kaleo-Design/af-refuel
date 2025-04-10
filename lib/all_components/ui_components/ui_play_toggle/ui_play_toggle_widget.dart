import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ui_play_toggle_model.dart';
export 'ui_play_toggle_model.dart';

class UiPlayToggleWidget extends StatefulWidget {
  const UiPlayToggleWidget({
    super.key,
    bool? isPlaying,
    required this.action,
  }) : this.isPlaying = isPlaying ?? false;

  final bool isPlaying;
  final Future Function()? action;

  @override
  State<UiPlayToggleWidget> createState() => _UiPlayToggleWidgetState();
}

class _UiPlayToggleWidgetState extends State<UiPlayToggleWidget> {
  late UiPlayToggleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiPlayToggleModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isPlayingState = widget.isPlaying;
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
    return Container(
      width: 64.0,
      height: 64.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          if (!_model.isPlayingState)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primary,
                borderRadius: 8.0,
                borderWidth: 2.0,
                buttonSize: 64.0,
                fillColor: FlutterFlowTheme.of(context).accent1,
                icon: Icon(
                  FFIcons.kplay,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 32.0,
                ),
                onPressed: () async {
                  // show_pause
                  _model.isPlayingState = true;
                  safeSetState(() {});
                  await widget.action?.call();
                },
              ),
            ),
          if (_model.isPlayingState)
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: 8.0,
                borderWidth: 2.0,
                buttonSize: 64.0,
                fillColor: FlutterFlowTheme.of(context).accent4,
                icon: Icon(
                  FFIcons.kpauseCircle,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 32.0,
                ),
                onPressed: () async {
                  // show_pause
                  _model.isPlayingState = false;
                  safeSetState(() {});
                  await widget.action?.call();
                },
              ),
            ),
        ],
      ),
    );
  }
}
