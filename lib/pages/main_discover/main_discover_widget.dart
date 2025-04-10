import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/views/view_main_discover/view_main_discover_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'main_discover_model.dart';
export 'main_discover_model.dart';

class MainDiscoverWidget extends StatefulWidget {
  const MainDiscoverWidget({super.key});

  static String routeName = 'main_discover';
  static String routePath = '/mainDiscover';

  @override
  State<MainDiscoverWidget> createState() => _MainDiscoverWidgetState();
}

class _MainDiscoverWidgetState extends State<MainDiscoverWidget> {
  late MainDiscoverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainDiscoverModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: wrapWithModel(
                model: _model.backgroundImageModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: BackgroundImageWidget(
                  color: CurrentMood.three,
                  borderRadius: 0.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent4,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.navHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavHeaderWidget(
                      progress: 0.4,
                      progressBG: FlutterFlowTheme.of(context).accent1,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      selectedDate: getCurrentTimestamp,
                      showDarkMode: false,
                      headerType: HeaderOptions.Search,
                      actionIcon: Icon(
                        FFIcons.krefreshCw01,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      action: () async {
                        context.pushNamed(
                          MainChatWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: wrapWithModel(
                              model: _model.viewMainDiscoverModel,
                              updateCallback: () => safeSetState(() {}),
                              updateOnChange: true,
                              child: ViewMainDiscoverWidget(),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 60.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navCustomModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: NavCustomWidget(
                  selectedNavParameter: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
