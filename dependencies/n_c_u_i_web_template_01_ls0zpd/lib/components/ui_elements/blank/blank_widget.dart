import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blank_model.dart';
export 'blank_model.dart';

class BlankWidget extends StatefulWidget {
  const BlankWidget({
    super.key,
    double? height,
    double? width,
  })  : this.height = height ?? 50.0,
        this.width = width ?? 300.0;

  final double height;
  final double width;

  @override
  State<BlankWidget> createState() => _BlankWidgetState();
}

class _BlankWidgetState extends State<BlankWidget> {
  late BlankModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankModel());

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
      width: widget!.width,
      height: widget!.height,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          FFAppConstants.sizeSmall.toDouble(),
          0.0,
        )),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          '+ Section',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Figtree',
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
