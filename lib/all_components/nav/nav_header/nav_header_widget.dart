import '/all_components/modals/modal_simple/modal_simple_widget.dart';
import '/all_components/modals/modal_tweak_plan/modal_tweak_plan_widget.dart';
import '/all_components/ui_components/dark_light_switch/dark_light_switch_widget.dart';
import '/all_components/views/view_calendar/view_calendar_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'nav_header_model.dart';
export 'nav_header_model.dart';

class NavHeaderWidget extends StatefulWidget {
  const NavHeaderWidget({
    super.key,
    this.progress,
    required this.progressBG,
    required this.progressColor,
    this.selectedDate,
    bool? showDarkMode,
    required this.headerType,
    String? title,
    this.actionIcon,
    required this.action,
  })  : this.showDarkMode = showDarkMode ?? true,
        this.title = title ?? 'Profile';

  final double? progress;
  final Color? progressBG;
  final Color? progressColor;
  final DateTime? selectedDate;
  final bool showDarkMode;
  final HeaderOptions? headerType;
  final String title;
  final Widget? actionIcon;
  final Future Function()? action;

  @override
  State<NavHeaderWidget> createState() => _NavHeaderWidgetState();
}

class _NavHeaderWidgetState extends State<NavHeaderWidget> {
  late NavHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavHeaderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).overlay0,
            FlutterFlowTheme.of(context).overlay0
          ],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(0.0, -1.0),
          end: AlignmentDirectional(0, 1.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  if (widget.headerType == HeaderOptions.Search) {
                    return Container(
                      height: 44.0,
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        textCapitalization: TextCapitalization.sentences,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search activities...',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Figtree',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              (_model.textFieldFocusNode?.hasFocus ?? false)
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context).accent4,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: (_model.textFieldFocusNode?.hasFocus ??
                                    false)
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                        minLines: 1,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    );
                  } else if (widget.headerType == HeaderOptions.Welcome) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircularPercentIndicator(
                          percent: widget.progress!,
                          radius: 16.0,
                          lineWidth: 4.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: valueOrDefault<Color>(
                            widget.progressColor,
                            FlutterFlowTheme.of(context).primary,
                          ),
                          backgroundColor: valueOrDefault<Color>(
                            widget.progressBG,
                            FlutterFlowTheme.of(context).accent1,
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor:
                                    FlutterFlowTheme.of(context).accent4,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ModalSimpleWidget(
                                      title: 'Select a Date',
                                      subtitle:
                                          'Select a date from below to review yoru progress.',
                                      maxHeight: 520.0,
                                      widgetContent: () => ViewCalendarWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                        "MMMEd", widget.selectedDate),
                                    'Today',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    );
                  } else {
                    return Text(
                      widget.title,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    );
                  }
                },
              ),
            ),
            if (widget.showDarkMode)
              wrapWithModel(
                model: _model.darkLightSwitchModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: DarkLightSwitchWidget(),
              ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).overlay0,
              borderRadius: 8.0,
              borderWidth: 2.0,
              buttonSize: 44.0,
              fillColor: FlutterFlowTheme.of(context).overlay0,
              icon: widget.actionIcon!,
              onPressed: () async {
                await widget.action?.call();
              },
            ),
            FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).overlay0,
              borderRadius: 8.0,
              borderWidth: 2.0,
              buttonSize: 44.0,
              fillColor: FlutterFlowTheme.of(context).overlay0,
              icon: Icon(
                Icons.settings_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  barrierColor: FlutterFlowTheme.of(context).accent4,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: ModalTweakPlanWidget(
                        piller: PillerStruct(
                          primaryColor: FlutterFlowTheme.of(context).primary,
                          accent1: FlutterFlowTheme.of(context).accent1,
                          pillar: 'General',
                        ),
                        selectedDay: widget.selectedDate!,
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
            ),
          ].divide(SizedBox(width: 8.0)),
        ),
      ),
    );
  }
}
