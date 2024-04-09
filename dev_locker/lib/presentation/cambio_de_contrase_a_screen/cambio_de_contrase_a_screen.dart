import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class CambioDeContraseAScreen extends StatelessWidget {
  const CambioDeContraseAScreen({Key? key})
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle261,
                height: 294.v,
                width: 325.h,
                radius: BorderRadius.circular(
                  31.h,
                ),
              ),
              SizedBox(height: 82.v),
              CustomElevatedButton(
                text: "Correo",
                buttonTextStyle: theme.textTheme.displayMedium!,
              ),
              SizedBox(height: 59.v),
              Container(
                width: 242.h,
                margin: EdgeInsets.only(
                  left: 44.h,
                  right: 42.h,
                ),
                decoration: AppDecoration.outlineOnPrimary,
                child: Text(
                  "Ingresa tu correo electrónico y se te enviará un mensaje con la contraseña",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 60.v),
              CustomElevatedButton(
                height: 70.v,
                width: 219.h,
                text: "Registrar",
                margin: EdgeInsets.only(left: 44.h),
                buttonStyle: CustomButtonStyles.outlineOnPrimary,
                buttonTextStyle: theme.textTheme.headlineLarge!,
                onPressed: () {
                  onTapRegistrar(context);
                },
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the contraseAEnviadaScreen when the action is triggered.
  onTapRegistrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contraseAEnviadaScreen);
  }
}
