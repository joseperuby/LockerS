import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key});

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());

    _model.textController1 ??= TextEditingController(text: 'Nombre completo');
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(text: 'Correo');
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController(text: 'Expediente');
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController(text: 'Teléfono');
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController(text: 'Contraseña');
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??=
        TextEditingController(text: 'Repetir contraseña');
    _model.textFieldFocusNode6 ??= FocusNode();
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
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ),
              ),
              Container(
                width: 160.0,
                height: 143.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF24272C),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF24272C),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/usuario.png',
                            width: 300.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 31.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Container(
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController2Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Container(
                  width: 283.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF24272C),
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 5.0),
                    child: TextFormField(
                      controller: _model.textController3,
                      focusNode: _model.textFieldFocusNode3,
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController3Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Container(
                  width: 283.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF24272C),
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 5.0),
                    child: TextFormField(
                      controller: _model.textController4,
                      focusNode: _model.textFieldFocusNode4,
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController4Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
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
                      controller: _model.textController5,
                      focusNode: _model.textFieldFocusNode5,
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController5Validator.asValidator(context),
                    ),
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
                      controller: _model.textController6,
                      focusNode: _model.textFieldFocusNode6,
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
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textController6Validator.asValidator(context),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 100.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 187.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF191818),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 136.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF24272C),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Registrar',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF24272C),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
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
                  Container(
                    width: 192.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF191818),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 136.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFF24272C),
                            borderRadius: BorderRadius.circular(17.0),
                          ),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Cancelar',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF24272C),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
