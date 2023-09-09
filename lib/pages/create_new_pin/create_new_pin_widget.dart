import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_new_pin_model.dart';
export 'create_new_pin_model.dart';

class CreateNewPinWidget extends StatefulWidget {
  const CreateNewPinWidget({Key? key}) : super(key: key);

  @override
  _CreateNewPinWidgetState createState() => _CreateNewPinWidgetState();
}

class _CreateNewPinWidgetState extends State<CreateNewPinWidget> {
  late CreateNewPinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateNewPinModel());
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
                        'Create New Pin',
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
                        'Add a PIN number to make your account more secure.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Urbanist',
                              fontSize: 18.0,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
                      child: PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 4,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyLarge
                            .override(
                              fontFamily: 'Urbanist',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        enableActiveFill: true,
                        autoFocus: true,
                        enablePinAutofill: false,
                        errorTextSpace: 16.0,
                        showCursor: false,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        obscureText: true,
                        obscuringCharacter: '●',
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 60.0,
                          fieldWidth: 70.0,
                          borderWidth: 1.0,
                          borderRadius: BorderRadius.circular(16.0),
                          shape: PinCodeFieldShape.box,
                          activeColor: FlutterFlowTheme.of(context).accent4,
                          inactiveColor: FlutterFlowTheme.of(context).accent4,
                          selectedColor: Color(0xFFF0F2FE),
                          activeFillColor: FlutterFlowTheme.of(context).accent4,
                          inactiveFillColor:
                              FlutterFlowTheme.of(context).accent4,
                          selectedFillColor: Color(0xFFF0F2FE),
                        ),
                        controller: _model.pinCodeController,
                        onChanged: (_) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: _model.pinCodeControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 20.0, 24.0, 40.0),
                      child: Container(
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
                            context.pushNamed('SetFingerPrint');
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
