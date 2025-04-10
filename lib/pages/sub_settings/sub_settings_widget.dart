import '/all_components/nav/nav_link_title/nav_link_title_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'sub_settings_model.dart';
export 'sub_settings_model.dart';

class SubSettingsWidget extends StatefulWidget {
  const SubSettingsWidget({super.key});

  static String routeName = 'sub_settings';
  static String routePath = '/subSettings';

  @override
  State<SubSettingsWidget> createState() => _SubSettingsWidgetState();
}

class _SubSettingsWidgetState extends State<SubSettingsWidget> {
  late SubSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubSettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 25.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Profile Settings',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Figtree',
                letterSpacing: 0.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  16.0,
                ),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  wrapWithModel(
                    model: _model.navLinkTitleModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      tag: 'Active',
                      showTag: true,
                    ),
                  ),
                  if (false)
                    wrapWithModel(
                      model: _model.navLinkTitleModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: NavLinkTitleWidget(
                        title: 'Location',
                        subtitle: 'Your general location while home.',
                        showTag: false,
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Your Profile',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navLinkTitleModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      title: 'Edit Profile',
                      subtitle:
                          'You can adjust your personal information here.',
                      showTag: false,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(SubSettingsInterestsWidget.routeName);
                    },
                    child: wrapWithModel(
                      model: _model.navLinkTitleModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: NavLinkTitleWidget(
                        title: 'Your Interests',
                        subtitle: 'You can manage the type of content you see.',
                        showTag: false,
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navLinkTitleModel5,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      title: 'Activity History',
                      subtitle:
                          'You can review all types of activity you have done in the app.',
                      showTag: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Help, Privacy & Terms',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navLinkTitleModel6,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      title: 'Privacy Policy',
                      subtitle: 'Checkout how we protect your data.',
                      showTag: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navLinkTitleModel7,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      title: 'Terms & Conditions',
                      subtitle: 'Always handy to know what you have agreed to.',
                      showTag: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.navLinkTitleModel8,
                    updateCallback: () => safeSetState(() {}),
                    child: NavLinkTitleWidget(
                      title: 'Help Center',
                      subtitle: 'Access our help center, and contact page.',
                      showTag: false,
                    ),
                  ),
                ].divide(SizedBox(height: 1.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'App Version',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'v0.0.1',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
            ),
          ].divide(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
