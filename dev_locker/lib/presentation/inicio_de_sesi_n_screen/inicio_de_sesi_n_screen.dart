import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class InicioDeSesiNScreen extends StatelessWidget {
  const InicioDeSesiNScreen({Key? key})
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
            horizontal: 52.h,
            vertical: 47.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 294.v,
                width: 325.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle261,
                      height: 294.v,
                      width: 325.h,
                      radius: BorderRadius.circular(
                        31.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle261,
                      height: 294.v,
                      width: 325.h,
                      radius: BorderRadius.circular(
                        31.h,
                      ),
                      alignment: Alignment.center,
                    )
                  ],
                ),
              ),
              SizedBox(height: 84.v),
              _buildUsuario(context),
              SizedBox(height: 52.v),
              _buildContrasea(context),
              SizedBox(height: 12.v),
              GestureDetector(
                onTap: () {
                  onTapTxtOlvidastetu(context);
                },
                child: Container(
                  decoration: AppDecoration.outlineOnPrimary,
                  child: Text(
                    "¿Olvidaste tu contraseña?",
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildIniciarsesin(context),
              SizedBox(height: 12.v),
              _buildRegistrar(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsuario(BuildContext context) {
    return CustomElevatedButton(
      text: "Usuario",
      buttonTextStyle: theme.textTheme.displayMedium!,
    );
  }

  /// Section Widget
  Widget _buildContrasea(BuildContext context) {
    return CustomElevatedButton(
      text: "Contraseña",
      buttonTextStyle: theme.textTheme.displayMedium!,
    );
  }

  /// Section Widget
  Widget _buildIniciarsesin(BuildContext context) {
    return CustomElevatedButton(
      height: 70.v,
      width: 219.h,
      text: "Iniciar sesión",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.headlineLarge!,
    );
  }

  /// Section Widget
  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapRegister(context);
      },
      height: 70.v,
      width: 219.h,
      text: "Registrar",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.headlineLarge!,
    );
  }

  /// Navigates to the cambioDeContraseAScreen when the action is triggered.
  onTapTxtOlvidastetu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cambioDeContraseAScreen);
  }

  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroScreen);
  }
}
