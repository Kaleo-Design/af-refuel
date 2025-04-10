import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_empty/ui_empty_widget.dart';
import '/components/ui_pages/page_main/page_main_widget.dart';
import '/components/ui_sections/section_profile/section_profile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_profile_model.dart';
export 'main_profile_model.dart';

class MainProfileWidget extends StatefulWidget {
  const MainProfileWidget({super.key});

  static String routeName = 'main_profile';
  static String routePath = '/mainProfile';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<MainProfileWidget> createState() => _MainProfileWidgetState();
}

class _MainProfileWidgetState extends State<MainProfileWidget> {
  late MainProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainProfileModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.navContainerModel,
                updateCallback: () => safeSetState(() {}),
                child: NavContainerWidget(
                  widget: () => NavSideMainWidget(
                    selectedNav: 5,
                  ),
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.pageMainModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PageMainWidget(
                    sectionTopLeft: () => UiEmptyWidget(),
                    sectionTopRight: () => UiEmptyWidget(),
                    section01: () => SectionProfileWidget(),
                    section02: () => UiEmptyWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
