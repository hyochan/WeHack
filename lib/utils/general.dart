import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/localization.dart';
import '../views/shared/dialog_spinner.dart';

class General {
  static final General instance = new General();

  TextSelection setCursorAtTheEnd(TextEditingController txtController) {
    /// Flutter currently reset the cursor. Always place the cursor at the end.
    TextSelection cursorPos = txtController.selection;
    cursorPos = TextSelection.fromPosition(
      TextPosition(offset: txtController.text.length),
    );
    txtController.selection = cursorPos;

    return cursorPos;
  }

  Future<Object> navigateScreenNamed(BuildContext context, String routeName,
      {bool reset = false}) {
    if (reset) {
      return Navigator.pushNamedAndRemoveUntil(
        context,
        routeName,
        ModalRoute.withName(routeName),
      );
    }
    return Navigator.of(context).pushNamed(routeName);
  }

  void showDialogSpinner(
    BuildContext context, {
    String str,
    TextStyle txtStyle,
  }) {
    showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return DialogSpinner(
            txtStyle: txtStyle,
            text: str != null ? str : Localization.of(context).trans('LOADING'),
          );
        });
  }

  void registerForMenti() {
    launch('https://forms.gle/GhvRHvaeEvNhnUPL8');
  }

  void registerForMentor() {
    launch('https://forms.gle/VGJpemvKqRmmZWEc9');
  }

  void goToGithub() {
    launch('https://github.com/dooboolab');
  }
}
