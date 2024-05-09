import 'package:lock/routes/app_routes.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'info_prestamos_admin_model.dart';
export 'info_prestamos_admin_model.dart';

class InfoPrestamosAdminWidget extends StatefulWidget {
  const InfoPrestamosAdminWidget({Key? key});

  @override
  State<InfoPrestamosAdminWidget> createState() =>
      _InfoPrestamosAdminWidgetState();
}

class _InfoPrestamosAdminWidgetState extends State<InfoPrestamosAdminWidget> {
  late InfoPrestamosAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoPrestamosAdminModel());
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
                              'Préstamos',
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 0.0, 0.0),
                                  child: InkWell(
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
                                        'assets/images/flecha-correcta_(1).png',
                                        width: 35.0,
                                        height: 31.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      52.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Nombre de locker',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      140.0, 13.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/casillero-personal.png',
                                      width: 92.0,
                                      height: 101.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0xCCFFFFFF),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: 335.0,
                            height: 69.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF24272C),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Nombre de usuario',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 90.0, 0.0),
                                          child: Text(
                                            'Estado:',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pushNamed(context, AppRoutes.menuPrincipalScreen);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/casillero-personal_(1).png',
                                width: 39.0,
                                height: 36.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Tus lockers',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF48484C),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/menu.png',
                            width: 39.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Préstamos',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
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
