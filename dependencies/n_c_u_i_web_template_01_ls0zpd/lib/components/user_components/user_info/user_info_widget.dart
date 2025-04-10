import '/components/user_components/user_avatar/user_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_info_model.dart';
export 'user_info_model.dart';

class UserInfoWidget extends StatefulWidget {
  const UserInfoWidget({
    super.key,
    bool? showName,
    String? name,
    String? subTitle,
    String? avatar,
    int? imageSize,
    this.titleColor,
  })  : this.showName = showName ?? true,
        this.name = name ?? 'User Name',
        this.subTitle = subTitle ?? 'name@domain.com',
        this.avatar = avatar ?? '',
        this.imageSize = imageSize ?? 36;

  final bool showName;
  final String name;
  final String subTitle;
  final String avatar;
  final int imageSize;
  final Color? titleColor;

  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  late UserInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInfoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        wrapWithModel(
          model: _model.userAvatarModel,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: UserAvatarWidget(
            size: widget!.imageSize,
            image: widget!.avatar,
          ),
        ),
        if (widget!.showName)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget!.name,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: valueOrDefault<Color>(
                          widget!.titleColor,
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: Text(
                    widget!.subTitle,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
