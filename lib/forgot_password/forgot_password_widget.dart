import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import '../reset_password/reset_password_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key key}) : super(key: key);

  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 1000,
                height: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.71, 0.13),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await sendEmailVerification();
                        },
                        text: 'Resend code',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF00021E),
                                  ),
                          elevation: 1,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.06, 0.01),
                      child: Text(
                        'Didn\'t receive a reset code?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF07034D),
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.05, -1),
                      child: Container(
                        width: 1000,
                        height: 380,
                        decoration: BoxDecoration(
                          color: Color(0xFF07034D),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(150),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(200),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.98, -0.99),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 40,
                                borderWidth: 1,
                                buttonSize: 60,
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: Colors.black,
                                  size: 40,
                                ),
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 300),
                                      reverseDuration:
                                          Duration(milliseconds: 300),
                                      child: LoginWidget(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.04, -0.47),
                              child: Image.asset(
                                'assets/images/email.png',
                                width: 200,
                                height: 200,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.03, 0.39),
                              child: Text(
                                'Check your Email',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.95, -0.95),
                              child: Image.asset(
                                'assets/images/Logo.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.7, -0.35),
                      child: Text(
                        'We have sent you a password reset code \nvia email.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF959595),
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.39, -0.09),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                        child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Code',
                            hintText: 'Enter Code',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Color(0xFF07034D),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.7, 0.13),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: ResetPasswordWidget(),
                            ),
                          );
                        },
                        text: 'Continue',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF07034D),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
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
