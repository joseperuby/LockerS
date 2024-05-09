import 'package:lock/core/app_export.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController1 ??= TextEditingController(text: 'Usuario');
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(text: 'Contraseña');
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: 393.0,
          height: 856.0,
          decoration: const BoxDecoration(
            color: Color(0xFF191818),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/lockersport.png',
                  width: 282.0,
                  height: 246.0,
                  fit: BoxFit.cover,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 84.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Container(
                width: 283.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF24272C),
                  borderRadius: BorderRadius.circular(17.0),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 1.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Readex Pro',
                                fontSize: 26.0,
                                letterSpacing: 0.0,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.center,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 283.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF24272C),
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController2,
                      focusNode: _model.textFieldFocusNode2,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Container(
                    width: 224.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ),
              Text(
                '¿Olvidaste tu contraseña?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 88.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pushNamed(context, AppRoutes.menuPrincipalScreen);
                  },
                  text: 'Iniciar sesión',
                  options: FFButtonOptions(
                    width: 180.0,
                    height: 51.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF24272C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 21.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pushNamed(context, AppRoutes.homePageCopyScreen);
                  },
                  text: 'Registrarse',
                  options: FFButtonOptions(
                    width: 180.0,
                    height: 51.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF24272C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
