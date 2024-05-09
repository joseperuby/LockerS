import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpWidget extends StatelessWidget {
  const OtpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 6,
      fillColor: Colors.black.withOpacity(0.1),
      filled: true,
    );
  }
}
