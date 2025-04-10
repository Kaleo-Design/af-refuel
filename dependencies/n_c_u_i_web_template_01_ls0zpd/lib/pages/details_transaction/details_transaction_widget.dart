import '/components/navigation/nav_breadcrumbs_01/nav_breadcrumbs01_widget.dart';
import '/components/navigation/nav_container/nav_container_widget.dart';
import '/components/navigation/nav_side_01/nav_side01_widget.dart';
import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/ui_pages/page_basic/page_basic_widget.dart';
import '/components/ui_sections/section_transaction/section_transaction_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_transaction_model.dart';
export 'details_transaction_model.dart';

class DetailsTransactionWidget extends StatefulWidget {
  const DetailsTransactionWidget({super.key});

  static String routeName = 'details_transaction';
  static String routePath = '/detailsTransaction';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<DetailsTransactionWidget> createState() =>
      _DetailsTransactionWidgetState();
}

class _DetailsTransactionWidgetState extends State<DetailsTransactionWidget> {
  late DetailsTransactionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsTransactionModel());

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
                  'Order Details',
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
                    selectedNav: 3,
                  ),
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.pageBasicModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PageBasicWidget(
                    sectionTopLeft: () => NavBreadcrumbs01Widget(
                      titleOne: 'Home',
                      titleTwo: 'Details',
                    ),
                    sectionTopRight: () => TagGenericWidget(
                      text: 'Active',
                      accentColor: FlutterFlowTheme.of(context).accent2,
                      fillColor: FlutterFlowTheme.of(context).secondary,
                    ),
                    sectionMain: () => SectionTransactionWidget(),
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
