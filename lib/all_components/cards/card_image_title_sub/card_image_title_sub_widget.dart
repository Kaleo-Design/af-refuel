import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'card_image_title_sub_model.dart';
export 'card_image_title_sub_model.dart';

class CardImageTitleSubWidget extends StatefulWidget {
  const CardImageTitleSubWidget({
    super.key,
    this.title,
    String? subTitle,
    String? image,
    double? width,
  })  : this.subTitle = subTitle ?? '8 x 4 sets',
        this.image = image ??
            'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d29ya291dHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
        this.width = width ?? 150.0;

  final String? title;
  final String subTitle;
  final String image;
  final double width;

  @override
  State<CardImageTitleSubWidget> createState() =>
      _CardImageTitleSubWidgetState();
}

class _CardImageTitleSubWidgetState extends State<CardImageTitleSubWidget> {
  late CardImageTitleSubModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardImageTitleSubModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).overlay30,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 500),
                    fadeOutDuration: Duration(milliseconds: 500),
                    imageUrl: valueOrDefault<String>(
                      widget.image,
                      'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d29ya291dHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                    ),
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.title,
                  'Arm Scissors',
                ),
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.subTitle,
                      style: TextStyle(),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
          ].addToEnd(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
