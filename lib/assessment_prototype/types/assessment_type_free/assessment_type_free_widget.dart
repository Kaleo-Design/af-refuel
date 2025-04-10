import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_highlight/card_highlight_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'assessment_type_free_model.dart';
export 'assessment_type_free_model.dart';

class AssessmentTypeFreeWidget extends StatefulWidget {
  const AssessmentTypeFreeWidget({
    super.key,
    required this.assessmentItemData,
    required this.prompt,
    required this.onInputChangeCallback,
  });

  final AssessmentItemDataWrapperStruct? assessmentItemData;
  final String? prompt;
  final Future Function(String responseString)? onInputChangeCallback;

  @override
  State<AssessmentTypeFreeWidget> createState() =>
      _AssessmentTypeFreeWidgetState();
}

class _AssessmentTypeFreeWidgetState extends State<AssessmentTypeFreeWidget>
    with TickerProviderStateMixin {
  late AssessmentTypeFreeModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentTypeFreeModel());

    _model.freeResponseInputTextController ??= TextEditingController(
        text: widget.assessmentItemData?.typeFreeData.responseText);
    _model.freeResponseInputFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.prompt,
                    'Answer question below',
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Record your written response below.',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Container(
              width: double.infinity,
              child: TextFormField(
                controller: _model.freeResponseInputTextController,
                focusNode: _model.freeResponseInputFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.freeResponseInputTextController',
                  Duration(milliseconds: 1000),
                  () async {
                    await widget.onInputChangeCallback?.call(
                      _model.freeResponseInputTextController.text,
                    );
                  },
                ),
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                  hintText: 'Enter Response Here',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
                maxLines: null,
                minLines: 2,
                maxLength: widget.assessmentItemData?.typeFreeData.options
                    .text.characters.max,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                buildCounter: (context,
                        {required currentLength,
                        required isFocused,
                        maxLength}) =>
                    null,
                keyboardType: TextInputType.multiline,
                cursorColor: FlutterFlowTheme.of(context).primary,
                validator: _model.freeResponseInputTextControllerValidator
                    .asValidator(context),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.uiSelectOptionModel1,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: UiSelectOptionWidget(
                          text: 'Save to Journal',
                          icon: Icon(
                            FFIcons.kbookmark,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          isSelected: false,
                          fontSize: 14.0,
                          action: () async {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.uiSelectOptionModel2,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: UiSelectOptionWidget(
                          text: 'Add to Insights',
                          icon: Icon(
                            FFIcons.kmagicWand01,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                          isSelected: false,
                          fontSize: 14.0,
                          action: () async {},
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
              if (false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.cardHighlightModel1,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: CardHighlightWidget(
                      title: 'Saving to Ai Journal',
                      description:
                          'We\'ll save this answer to your journal to be analyzed & used in your conversations with the Ai assistant.',
                      showActions: false,
                      acceptAction: () async {},
                    ),
                  ),
                ),
              if (false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.cardHighlightModel2,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: CardHighlightWidget(
                      title: 'Adding to Insights',
                      description:
                          'Our Ai assistant will analyze this as part of their knowledge base.',
                      showActions: false,
                      acceptAction: () async {},
                    ),
                  ),
                ),
            ],
          ),
        ]
            .divide(SizedBox(height: 24.0))
            .addToStart(SizedBox(height: 24.0))
            .addToEnd(SizedBox(height: 96.0)),
      ),
    ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
  }
}
