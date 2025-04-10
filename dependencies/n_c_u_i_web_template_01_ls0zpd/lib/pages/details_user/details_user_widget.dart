import '/components/cards/card_activity_view/card_activity_view_widget.dart';
import '/components/navigation/nav_breadcrumbs_01/nav_breadcrumbs01_widget.dart';
import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_01/nav_side01_widget.dart';
import '/components/ui_pages/page_basic/page_basic_widget.dart';
import '/components/ui_sections/ui_section_buttons_medium/ui_section_buttons_medium_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_user_model.dart';
export 'details_user_model.dart';

class DetailsUserWidget extends StatefulWidget {
  const DetailsUserWidget({super.key});

  static String routeName = 'details_user';
  static String routePath = '/detailsUser';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<DetailsUserWidget> createState() => _DetailsUserWidgetState();
}

class _DetailsUserWidgetState extends State<DetailsUserWidget> {
  late DetailsUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsUserModel());

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
        appBar: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ) &&
                (MediaQuery.sizeOf(context).width <= 991.0)
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  'User Details',
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.navContainerModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: NavContainerWidget(
                  widget: () => NavSide01Widget(
                    selectedNav: 2,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.pageBasicModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: PageBasicWidget(
                      sectionTopLeft: () => NavBreadcrumbs01Widget(
                        titleOne: 'Home',
                        titleTwo: 'User Details',
                      ),
                      sectionTopRight: () => UiSectionButtonsMediumWidget(
                        titlePositive: 'Update Password',
                        titleNeutral: 'Edit User',
                        actionPositive: () async {},
                        actionNeutral: () async {},
                      ),
                      sectionMain: () => CardActivityViewWidget(),
                    ),
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
