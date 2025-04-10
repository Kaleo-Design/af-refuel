import '/all_components/ui_components/ui_dropdown_chat_options/ui_dropdown_chat_options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'ui_custom_dropdown_model.dart';
export 'ui_custom_dropdown_model.dart';

class UiCustomDropdownWidget extends StatefulWidget {
  const UiCustomDropdownWidget({
    super.key,
    required this.selectedValue,
  });

  final String? selectedValue;

  @override
  State<UiCustomDropdownWidget> createState() => _UiCustomDropdownWidgetState();
}

class _UiCustomDropdownWidgetState extends State<UiCustomDropdownWidget> {
  late UiCustomDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiCustomDropdownModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedState = widget.selectedValue;
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
    return Builder(
      builder: (context) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await showAlignedDialog(
            barrierColor: FlutterFlowTheme.of(context).accent4,
            context: context,
            isGlobal: false,
            avoidOverflow: true,
            targetAnchor: AlignmentDirectional(-1.0, 1.0)
                .resolve(Directionality.of(context)),
            followerAnchor: AlignmentDirectional(-1.0, -1.0)
                .resolve(Directionality.of(context)),
            builder: (dialogContext) {
              return Material(
                color: Colors.transparent,
                child: UiDropdownChatOptionsWidget(),
              );
            },
          ).then((value) => safeSetState(() => _model.updatedValue = value));

          if (_model.updatedValue != null && _model.updatedValue != '') {
            _model.selectedState = _model.updatedValue;
            safeSetState(() {});
          }

          safeSetState(() {});
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  valueOrDefault<String>(
                    _model.selectedState,
                    'Reflect',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
                Icon(
                  FFIcons.kchevronDown,
                  color: FlutterFlowTheme.of(context).primaryText50,
                  size: 24.0,
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
        ),
      ),
    );
  }
}
