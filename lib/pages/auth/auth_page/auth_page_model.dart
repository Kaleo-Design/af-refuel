import '/all_components/nav/ui_logo_main/ui_logo_main_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'auth_page_widget.dart' show AuthPageWidget;
import 'package:flutter/material.dart';

class AuthPageModel extends FlutterFlowModel<AuthPageWidget> {
  ///  Local state fields for this page.

  String? signInError;

  String? createAccountError;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for ui_logo_main component.
  late UiLogoMainModel uiLogoMainModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_SignIn widget.
  FocusNode? emailAddressSignInFocusNode;
  TextEditingController? emailAddressSignInTextController;
  String? Function(BuildContext, String?)?
      emailAddressSignInTextControllerValidator;
  String? _emailAddressSignInTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 6) {
      return 'Must be at least 6 characters';
    }
    if (val.length > 254) {
      return 'Cannot exceed 254 characters';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // State field(s) for password_SignIn widget.
  FocusNode? passwordSignInFocusNode;
  TextEditingController? passwordSignInTextController;
  late bool passwordSignInVisibility;
  String? Function(BuildContext, String?)?
      passwordSignInTextControllerValidator;
  String? _passwordSignInTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 5) {
      return 'Must be at least 5 characters';
    }
    if (val.length > 64) {
      return 'Cannot exceed 64 characters';
    }
    if (!RegExp('^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)[A-Za-z\\d]{5,64}\$')
        .hasMatch(val)) {
      return 'Must include at least one uppercase, lowercase, and a number.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Sign In)] action in Button widget.
  ApiCallResponse? signInResponse;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  String? _emailAddressCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 6) {
      return 'Must be at least 6 characters';
    }
    if (val.length > 254) {
      return 'Cannot exceed 254 characters';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  // State field(s) for firstName_Create widget.
  FocusNode? firstNameCreateFocusNode;
  TextEditingController? firstNameCreateTextController;
  String? Function(BuildContext, String?)?
      firstNameCreateTextControllerValidator;
  String? _firstNameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First Name is required';
    }

    if (val.length < 2) {
      return 'Must be at least 2 characters';
    }
    if (val.length > 50) {
      return 'Cannot exceed 50 characters';
    }
    if (!RegExp('^(?! )[A-Z][a-zA-Z\' -]{0,48}[a-zA-Z]\$').hasMatch(val)) {
      return 'Must start with a capital and contain only letters, hyphens, or apostrophes';
    }
    return null;
  }

  // State field(s) for lastName_Create widget.
  FocusNode? lastNameCreateFocusNode;
  TextEditingController? lastNameCreateTextController;
  String? Function(BuildContext, String?)?
      lastNameCreateTextControllerValidator;
  String? _lastNameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last Name is required';
    }

    if (val.length < 2) {
      return 'Must be at least 2 characters';
    }
    if (val.length > 50) {
      return 'Cannot exceed 50 characters';
    }
    if (!RegExp('^(?! )[A-Z][a-zA-Z\' -]{0,48}[a-zA-Z]\$').hasMatch(val)) {
      return 'Must start with a capital and contain only letters, hyphens, or apostrophes.';
    }
    return null;
  }

  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 12) {
      return 'Must be at least 12 characters';
    }
    if (val.length > 64) {
      return 'Cannot exceed 64 characters';
    }
    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[!@#\\\$&*~])[A-Za-z\\d!@#\\\$&*~]{12,64}\$')
        .hasMatch(val)) {
      return 'Must include at least one uppercase, lowercase, number, and special character';
    }
    return null;
  }

  // State field(s) for passwordConfirm_Create widget.
  FocusNode? passwordConfirmCreateFocusNode;
  TextEditingController? passwordConfirmCreateTextController;
  late bool passwordConfirmCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmCreateTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create Account)] action in Button widget.
  ApiCallResponse? createAccountResponse;

  @override
  void initState(BuildContext context) {
    uiLogoMainModel = createModel(context, () => UiLogoMainModel());
    emailAddressSignInTextControllerValidator =
        _emailAddressSignInTextControllerValidator;
    passwordSignInVisibility = false;
    passwordSignInTextControllerValidator =
        _passwordSignInTextControllerValidator;
    emailAddressCreateTextControllerValidator =
        _emailAddressCreateTextControllerValidator;
    firstNameCreateTextControllerValidator =
        _firstNameCreateTextControllerValidator;
    lastNameCreateTextControllerValidator =
        _lastNameCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passwordConfirmCreateVisibility = false;
  }

  @override
  void dispose() {
    uiLogoMainModel.dispose();
    tabBarController?.dispose();
    emailAddressSignInFocusNode?.dispose();
    emailAddressSignInTextController?.dispose();

    passwordSignInFocusNode?.dispose();
    passwordSignInTextController?.dispose();

    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    firstNameCreateFocusNode?.dispose();
    firstNameCreateTextController?.dispose();

    lastNameCreateFocusNode?.dispose();
    lastNameCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmCreateFocusNode?.dispose();
    passwordConfirmCreateTextController?.dispose();
  }
}
