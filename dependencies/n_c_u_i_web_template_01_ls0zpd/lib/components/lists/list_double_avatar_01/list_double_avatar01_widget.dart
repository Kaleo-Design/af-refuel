import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_double_avatar01_model.dart';
export 'list_double_avatar01_model.dart';

class ListDoubleAvatar01Widget extends StatefulWidget {
  const ListDoubleAvatar01Widget({
    super.key,
    String? name,
    String? subTitle,
    String? avatar,
    int? imageSize,
    this.list01,
    String? list02,
    String? textStatus,
    this.accentColor,
    this.fillColor,
    required this.menuAction,
    required this.listAction,
  })  : this.name = name ?? 'User Name',
        this.subTitle = subTitle ?? 'name@domain.com',
        this.avatar = avatar ?? '',
        this.imageSize = imageSize ?? 36,
        this.list02 = list02 ?? 'Value',
        this.textStatus = textStatus ?? 'Active';

  final String name;
  final String subTitle;
  final String avatar;
  final int imageSize;
  final String? list01;
  final String list02;
  final String textStatus;
  final Color? accentColor;
  final Color? fillColor;
  final Future Function()? menuAction;
  final Future Function()? listAction;

  @override
  State<ListDoubleAvatar01Widget> createState() =>
      _ListDoubleAvatar01WidgetState();
}

class _ListDoubleAvatar01WidgetState extends State<ListDoubleAvatar01Widget> {
  late ListDoubleAvatar01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListDoubleAvatar01Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.listAction?.call();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 0.0,
                color: FlutterFlowTheme.of(context).primaryBackground,
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 4,
                        child: wrapWithModel(
                          model: _model.userInfoModel,
                          updateCallback: () => safeSetState(() {}),
                          child: UserInfoWidget(
                            showName: true,
                            name: widget!.name,
                            subTitle: widget!.subTitle,
                            avatar: widget!.avatar,
                            imageSize: widget!.imageSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Expanded(
                    flex: 3,
                    child: Text(
                      valueOrDefault<String>(
                        widget!.list01,
                        'Value',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Expanded(
                    flex: 3,
                    child: Text(
                      valueOrDefault<String>(
                        widget!.list02,
                        'Value',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.tagGenericModel,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: TagGenericWidget(
                          accentColor: widget!.accentColor,
                          text: widget!.textStatus,
                          fillColor: widget!.fillColor,
                        ),
                      ),
                    ],
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 36.0,
                          icon: Icon(
                            Icons.more_vert,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                          onPressed: () async {
                            await widget.menuAction?.call();
                          },
                        ),
                      ],
                    ),
                  ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
