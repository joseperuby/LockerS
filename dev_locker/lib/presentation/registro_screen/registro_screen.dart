import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({Key? key})
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
            horizontal: 22.h,
            vertical: 34.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 6.v),
              SizedBox(
                height: 174.adaptSize,
                width: 174.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 174.v,
                        width: 173.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            74.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 174.adaptSize,
                        width: 174.adaptSize,
                        padding: EdgeInsets.all(28.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder74,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgUsuario11,
                          height: 118.adaptSize,
                          width: 118.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 34.v),
              _buildNombrecompleto(context),
              SizedBox(height: 20.v),
              _buildCorreo(context),
              SizedBox(height: 15.v),
              _buildExpediente(context),
              SizedBox(height: 18.v),
              _buildTelfono(context),
              SizedBox(height: 20.v),
              _buildContrasea(context),
              SizedBox(height: 21.v),
              _buildRepetir(context),
              SizedBox(height: 10.v),
              _buildRowregistrar(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNombrecompleto(BuildContext context) {
    return CustomElevatedButton(
      text: "Nombre Completo",
      margin: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildCorreo(BuildContext context) {
    return CustomElevatedButton(
      text: "Correo",
      margin: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildExpediente(BuildContext context) {
    return CustomElevatedButton(
      text: "Expediente",
      margin: EdgeInsets.only(
        left: 28.h,
        right: 31.h,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildTelfono(BuildContext context) {
    return CustomElevatedButton(
      text: "Teléfono ",
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildContrasea(BuildContext context) {
    return CustomElevatedButton(
      text: "Contraseña",
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildRepetir(BuildContext context) {
    return CustomElevatedButton(
      text: "Repetir Contraseña",
      margin: EdgeInsets.only(
        left: 30.h,
        right: 31.h,
      ),
      buttonTextStyle: CustomTextStyles.headlineLarge30,
    );
  }

  /// Section Widget
  Widget _buildRegistrar(BuildContext context) {
    return CustomElevatedButton(
      height: 74.v,
      width: 159.h,
      text: "Registrar",
      margin: EdgeInsets.only(top: 2.v),
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.headlineLarge!,
      onPressed: () {
        onTapRegistrar(context);
      },
    );
  }

  /// Section Widget
  Widget _buildCancelar(BuildContext context) {
    return CustomElevatedButton(
      height: 74.v,
      width: 159.h,
      text: "Cancelar",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
      buttonTextStyle: theme.textTheme.headlineLarge!,
    );
  }

  /// Section Widget
  Widget _buildRowregistrar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildRegistrar(context), _buildCancelar(context)],
      ),
    );
  }

  /// Navigates to the registroCompletoScreen when the action is triggered.
  onTapRegistrar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registroCompletoScreen);
  }
}
