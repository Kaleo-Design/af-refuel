import '/all_components/nav/ui_logo_main/ui_logo_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth_forgotpassword_widget.dart' show AuthForgotpasswordWidget;
import 'package:flutter/material.dart';

class AuthForgotpasswordModel
    extends FlutterFlowModel<AuthForgotpasswordWidget> {
  ///  Local state fields for this page.

  String? signInError;

  String? createAccountError;

  ///  State fields for stateful widgets in this page.

  // Model for ui_logo_main component.
  late UiLogoMainModel uiLogoMainModel;
  // State field(s) for emailAddress_SignIn widget.
  FocusNode? emailAddressSignInFocusNode;
  TextEditingController? emailAddressSignInTextController;
  String? Function(BuildContext, String?)?
      emailAddressSignInTextControllerValidator;

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
