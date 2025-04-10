import '/all_components/nav/ui_logo_main/ui_logo_main_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'request_password_reset_page_widget.dart'
    show RequestPasswordResetPageWidget;
import 'package:flutter/material.dart';

class RequestPasswordResetPageModel
    extends FlutterFlowModel<RequestPasswordResetPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for ui_logo_main component.
  late UiLogoMainModel uiLogoMainModel;
  // State field(s) for emailAddress_SignIn widget.
  FocusNode? emailAddressSignInFocusNode;
  TextEditingController? emailAddressSignInTextController;
  String? Function(BuildContext, String?)?
      emailAddressSignInTextControllerValidator;
  // Stores action output result for [Backend Call - API (Request Password Reset)] action in Button widget.
  ApiCallResponse? requestPasswordResetResult;

  @override
  void initState(BuildContext context) {
    uiLogoMainModel = createModel(context, () => UiLogoMainModel());
  }

  @override
  void dispose() {
    uiLogoMainModel.dispose();
    emailAddressSignInFocusNode?.dispose();
    emailAddressSignInTextController?.dispose();
  }
}
