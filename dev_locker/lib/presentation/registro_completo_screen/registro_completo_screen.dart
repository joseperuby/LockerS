import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class RegistroCompletoScreen extends StatelessWidget {
  const RegistroCompletoScreen({Key? key})
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
              SizedBox(height: 99.v),
              Container(
                width: 242.h,
                margin: EdgeInsets.symmetric(horizontal: 43.h),
                decoration: AppDecoration.outlineOnPrimary,
                child: Text(
                  "Felicidades, tu registro ha sido completado con éxito. Ahora puedes acceder a todas las funcionalidades de nuestra plataforma.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildContinuar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinuar(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        onTapInciarSesion(context);
      },
      height: 70.v,
      width: 264.h,
      text: "Continuar",
      margin: EdgeInsets.only(
        left: 80.h,
        right: 86.h,
        bottom: 35.v,
      ),
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.headlineLarge!,
    );
  }
}

  onTapInciarSesion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioDeSesiNScreen);
  }
