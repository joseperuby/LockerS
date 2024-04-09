import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class ContraseAEnviadaScreen extends StatelessWidget {
  const ContraseAEnviadaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 51.h,
            vertical: 49.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle261,
                height: 294.v,
                width: 325.h,
                radius: BorderRadius.circular(
                  31.h,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 68.adaptSize,
                width: 68.adaptSize,
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 242.h,
                  margin: EdgeInsets.only(
                    left: 55.h,
                    right: 31.h,
                  ),
                  decoration: AppDecoration.outlineOnPrimary,
                  child: Text(
                    "Mensaje enviado, revisa tu correo electrónico.",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                height: 70.v,
                text: "Volver a enviar",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 24.h,
                ),
                buttonStyle: CustomButtonStyles.outlineOnPrimary,
                buttonTextStyle: theme.textTheme.headlineLarge!,
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                height: 70.v,
                text: "Continuar",
                margin: EdgeInsets.only(
                  left: 44.h,
                  right: 20.h,
                ),
                buttonStyle: CustomButtonStyles.outlineOnPrimary,
                buttonTextStyle: theme.textTheme.headlineLarge!,
                onPressed: () {
                  onTapContinuar(context);
                },
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 3.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the inicioDeSesiNScreen when the action is triggered.
  onTapContinuar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioDeSesiNScreen);
  }
}
