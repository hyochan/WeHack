import 'package:flutter/material.dart';

import '../../utils/asset.dart' as Asset;

class DialogSpinner extends StatelessWidget {
  const DialogSpinner({
    this.txtStyle,
    @required this.text,
  });

  final txtStyle;
  final text;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
              backgroundColor: Asset.Colors.primary,
              strokeWidth: 5.0,
              valueColor: AlwaysStoppedAnimation<Color>(Asset.Colors.primary),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                text,
                style: this.txtStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
