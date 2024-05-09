import 'package:lock/core/app_export.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'menuprincipal_admin_model.dart';
export 'menuprincipal_admin_model.dart';

class MenuprincipalAdminWidget extends StatefulWidget {
  const MenuprincipalAdminWidget({Key? key});

  @override
  State<MenuprincipalAdminWidget> createState() =>
      _MenuprincipalAdminWidgetState();
}

class _MenuprincipalAdminWidgetState extends State<MenuprincipalAdminWidget> {
  late MenuprincipalAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuprincipalAdminModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 376.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF24272C),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF24272C),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/usuario.png',
                                  width: 50.0,
                                  height: 50.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 177.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF24272C),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              'Tus lockers',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 29.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF24272C),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 59.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    Navigator
                                        .pushNamed(context, AppRoutes.configuracionLockerScreen);
                                  },
                                  text: '+',
                                  options: FFButtonOptions(
                                    width: 30.0,
                                    height: 30.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 24.0, 10.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFF48484C),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 50.0,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF24272C),
                  ),
                ),
              ],
            ),
            Container(
              width: 395.0,
              height: 654.0,
              decoration: const BoxDecoration(
                color: Color(0xFF24272C),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Container(
                width: 100.0,
                height: 333.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF48484C),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: 335.0,
                        height: 69.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF24272C),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pushNamed(context, AppRoutes.infoLockerScreen);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 8.0, 0.0, 8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/casillero-personal.png',
                                    width: 55.0,
                                    height: 212.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Número Locker',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    55.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/flecha-correcta.png',
                                    width: 33.0,
                                    height: 27.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 458.0,
              height: 100.0,
              decoration: const BoxDecoration(
                color: Color(0xFF24272C),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 196.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF24272C),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/casillero-personal.png',
                              width: 39.0,
                              height: 36.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Tus lockers',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 193.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF24272C),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pushNamed(context, AppRoutes.prestamosAdminCopy);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/menu.png',
                              width: 39.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Préstamos',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF48484C),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
