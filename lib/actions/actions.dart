import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';

/// A temp solution for calling the native alert dialogue for enabling push
/// notificatons outside of the onboarding flow.
///
/// A preliminary bottom sheet before the alert dialogue may be a better
/// implementation and let us control if we need to send the user to the
/// device settings to enable notifications, in the instance the native alert
/// has been dismissed too many times.
Future checkPushPermissions(BuildContext context) async {
  if (!(await getPermissionStatus(notificationsPermission))) {
    await requestPermission(notificationsPermission);
  }
}

/// An action to take in json and iterate over assessment items within and map
/// to their corresponding data structure, based on the item type.
///
/// Returns the data type as a list to be set locally or used directly from
/// action output.
Future setAssessmentData(BuildContext context) async {
  ApiCallResponse? assessmentAPIResult;

  assessmentAPIResult = await MockAssessmentResponseCall.call();

  if ((assessmentAPIResult.succeeded ?? true)) {
    // Clear Assessment Data
    FFAppState().updateAssessmentDataHolderStruct(
      (e) => e
        ..assessmentData = []
        ..assessmentId = MockAssessmentResponseCall.assessmentId(
          (assessmentAPIResult?.jsonBody ?? ''),
        )
        ..reminder = valueOrDefault<bool>(
          MockAssessmentResponseCall.reminder(
            (assessmentAPIResult?.jsonBody ?? ''),
          ),
          false,
        )
        ..skip = valueOrDefault<bool>(
          MockAssessmentResponseCall.skip(
            (assessmentAPIResult?.jsonBody ?? ''),
          ),
          false,
        ),
    );
    while (FFAppState().assessmentDataHolder.loopIndexMain <
        valueOrDefault<int>(
          MockAssessmentResponseCall.items(
            (assessmentAPIResult.jsonBody ?? ''),
          )?.length,
          0,
        )) {
      if (functions.getItemTypeEnum((assessmentAPIResult.jsonBody ?? ''),
              FFAppState().assessmentDataHolder.loopIndexMain) ==
          AssessmentItemType.fixed) {
        FFAppState().updateAssessmentDataHolderStruct(
          (e) => e
            ..updateAssessmentData(
              (e) => e.add(AssessmentItemDataWrapperStruct(
                itemType: AssessmentItemType.fixed,
                itemId: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.fixed.item_id''',
                ).toString().toString(),
                typeFixedData: functions.mapAssessmentDataFixed(
                    (assessmentAPIResult?.jsonBody ?? ''),
                    FFAppState().assessmentDataHolder.loopIndexMain),
                indexInLocal: FFAppState().assessmentDataHolder.loopIndexMain,
                prompt: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.fixed.prompt''',
                ).toString().toString(),
              )),
            ),
        );
      } else if (functions.getItemTypeEnum(
              (assessmentAPIResult.jsonBody ?? ''),
              FFAppState().assessmentDataHolder.loopIndexMain) ==
          AssessmentItemType.scale) {
        FFAppState().updateAssessmentDataHolderStruct(
          (e) => e
            ..updateAssessmentData(
              (e) => e.add(AssessmentItemDataWrapperStruct(
                itemType: AssessmentItemType.scale,
                itemId: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.scale.item_id''',
                ).toString().toString(),
                typeScaleData: functions.mapAssessmentDataScale(
                    (assessmentAPIResult?.jsonBody ?? ''),
                    FFAppState().assessmentDataHolder.loopIndexMain),
                indexInLocal: FFAppState().assessmentDataHolder.loopIndexMain,
                prompt: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.scale.prompt''',
                ).toString().toString(),
              )),
            ),
        );
      } else if (functions.getItemTypeEnum(
              (assessmentAPIResult.jsonBody ?? ''),
              FFAppState().assessmentDataHolder.loopIndexMain) ==
          AssessmentItemType.free) {
        FFAppState().updateAssessmentDataHolderStruct(
          (e) => e
            ..updateAssessmentData(
              (e) => e.add(AssessmentItemDataWrapperStruct(
                itemType: AssessmentItemType.free,
                itemId: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.free.item_id''',
                ).toString().toString(),
                typeFreeData: functions.mapAssessmentDataFree(
                    (assessmentAPIResult?.jsonBody ?? ''),
                    FFAppState().assessmentDataHolder.loopIndexMain),
                indexInLocal: FFAppState().assessmentDataHolder.loopIndexMain,
                prompt: getJsonField(
                  MockAssessmentResponseCall.items(
                    (assessmentAPIResult?.jsonBody ?? ''),
                  )?.elementAtOrNull(
                      FFAppState().assessmentDataHolder.loopIndexMain),
                  r'''$.free.prompt''',
                ).toString().toString(),
              )),
            ),
        );
      } else if (functions.getItemTypeEnum(
              (assessmentAPIResult.jsonBody ?? ''),
              FFAppState().assessmentDataHolder.loopIndexMain) ==
          AssessmentItemType.introduction) {}

      FFAppState().updateAssessmentDataHolderStruct(
        (e) => e..incrementLoopIndexMain(1),
      );
    }
    FFAppState().updateAssessmentDataHolderStruct(
      (e) => e..loopIndexMain = null,
    );
  }
}
