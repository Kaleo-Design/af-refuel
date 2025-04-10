import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_main/nav_side_main_widget.dart';
import '/components/ui_elements/ui_empty/ui_empty_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/components/ui_pages/page_basic/page_basic_widget.dart';
import '/components/ui_sections/section_list_activity/section_list_activity_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_notifications_model.dart';
export 'main_notifications_model.dart';

class MainNotificationsWidget extends StatefulWidget {
  const MainNotificationsWidget({super.key});

  static String routeName = 'main_notifications';
  static String routePath = '/mainNotifications';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<MainNotificationsWidget> createState() =>
      _MainNotificationsWidgetState();
}

class _MainNotificationsWidgetState extends State<MainNotificationsWidget> {
  late MainNotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainNotificationsModel());

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
                updateOnChange: true,
                child: NavContainerWidget(
                  widget: () => NavSideMainWidget(
                    selectedNav: 3,
                  ),
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.pageBasicModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: PageBasicWidget(
                    sectionTopLeft: () => UiTitleWidget(
                      title: 'Activity',
                      subTitle: 'Below is a list of your user\'s activity.',
                    ),
                    sectionTopRight: () => UiEmptyWidget(),
                    sectionMain: () => SectionListActivityWidget(),
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
