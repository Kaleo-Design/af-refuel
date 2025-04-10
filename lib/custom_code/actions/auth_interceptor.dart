// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'package:ff_commons/api_requests/api_interceptor.dart';
import '/auth/custom_auth/auth_util.dart';

class AuthInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Perform any necessary calls or modifications to the [options] before
    // the API call is made.
    // Retrieve the authentication token
    final String? authToken = currentAuthenticationToken;

    if (authToken != null && authToken.isNotEmpty) {
      options.headers['Authorization'] = 'Token $authToken';
    }

    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Perform any necessary calls or modifications to the [response] prior
    // to returning it.
    // Check if the response status code is 401
    if (response.statusCode == 401) {
      print('Received 401 Unauthorized. Logging out...');
      await authManager.signOut(); // Log the user out
    }

    return response;
  }
}
