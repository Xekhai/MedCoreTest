import '/components/account_successful_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'set_finger_print_model.dart';
export 'set_finger_print_model.dart';

class SetFingerPrintWidget extends StatefulWidget {
  const SetFingerPrintWidget({Key? key}) : super(key: key);

  @override
  _SetFingerPrintWidgetState createState() => _SetFingerPrintWidgetState();
}

class _SetFingerPrintWidgetState extends State<SetFingerPrintWidget> {
  late SetFingerPrintModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetFingerPrintModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 28.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Set Your Fingerprint',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(46.0, 80.0, 46.0, 0.0),
                      child: Text(
                        'Add a fingerprint to make your account more secure.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              fontSize: 18.0,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        final _localAuth = LocalAuthentication();
                        bool _isBiometricSupported =
                            await _localAuth.isDeviceSupported();

                        if (_isBiometricSupported) {
                          _model.bVerification = await _localAuth.authenticate(
                              localizedReason:
                                  'Add a fingerprint to make your account more secure.');
                          setState(() {});
                        }

                        if (_model.bVerification == true) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x65000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: AccountSuccessfulWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        } else {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x65000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: AccountSuccessfulWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }

                        setState(() {});
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Android_Fingerprint.png',
                          width: 260.0,
                          height: 260.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(46.0, 0.0, 46.0, 0.0),
                      child: Text(
                        'Please put your finger to on the fingerprint scanner to get started.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              fontSize: 18.0,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 20.0, 0.0, 40.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x65000000),
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: AccountSuccessfulWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: 'Skip',
                              options: FFButtonOptions(
                                width: 380.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFF0F2FE),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Urbanist',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 24.0, 40.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 15.0,
                                  color: Color(0x40071C99),
                                  offset: Offset(0.0, 6.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x65000000),
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: AccountSuccessfulWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              text: 'Continue',
                              options: FFButtonOptions(
                                width: 380.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Urbanist',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
