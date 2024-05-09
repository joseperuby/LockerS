import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lock/theme/custom_button_style.dart';
import 'package:lock/widgets/custom_elevated_button.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF474747),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CO\nDE",
              style: GoogleFonts.montserrat(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Verification",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Enter the verification code sent at support@coding.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                print("OTP is $code");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            _buildNext(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNext(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomElevatedButton(
        onPressed: () {
        },
        height: 50,
        text: "Next",
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: Theme.of(context).textTheme.bodyLarge!,
      ),
    );
  }
}
