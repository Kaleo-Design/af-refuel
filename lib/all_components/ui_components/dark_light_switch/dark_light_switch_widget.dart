import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'dark_light_switch_model.dart';
export 'dark_light_switch_model.dart';

class DarkLightSwitchWidget extends StatefulWidget {
  const DarkLightSwitchWidget({super.key});

  @override
  State<DarkLightSwitchWidget> createState() => _DarkLightSwitchWidgetState();
}

class _DarkLightSwitchWidgetState extends State<DarkLightSwitchWidget> {
  late DarkLightSwitchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkLightSwitchModel());

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
      builder: (context) {
        if (Theme.of(context).brightness == Brightness.dark) {
          return FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).overlay30,
            borderRadius: 8.0,
            borderWidth: 2.0,
            buttonSize: 32.0,
            fillColor: FlutterFlowTheme.of(context).overlay30,
            icon: Icon(
              FFIcons.ksun,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 16.0,
            ),
            onPressed: () async {
              if (Theme.of(context).brightness == Brightness.dark) {
                // change_to_lightmode
                setDarkModeSetting(context, ThemeMode.light);
              } else {
                // change_to_darkmode
                setDarkModeSetting(context, ThemeMode.dark);
              }
            },
          );
        } else {
          return FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).overlay30,
            borderRadius: 8.0,
            borderWidth: 2.0,
            buttonSize: 32.0,
            fillColor: FlutterFlowTheme.of(context).overlay30,
            icon: Icon(
              FFIcons.kmoon01,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 16.0,
            ),
            onPressed: () async {
              if (Theme.of(context).brightness == Brightness.dark) {
                // change_to_lightmode
                setDarkModeSetting(context, ThemeMode.light);
              } else {
                // change_to_darkmode
                setDarkModeSetting(context, ThemeMode.dark);
              }
            },
          );
        }
      },
    );
  }
}
