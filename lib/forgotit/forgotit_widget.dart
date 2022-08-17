import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../login/login_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotitWidget extends StatefulWidget {
  const ForgotitWidget({Key key}) : super(key: key);

  @override
  _ForgotitWidgetState createState() => _ForgotitWidgetState();
}

class _ForgotitWidgetState extends State<ForgotitWidget> {
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
                      alignment: AlignmentDirectional(-0.06, 0.13),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await sendEmailVerification();
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: ForgotPasswordWidget(),
                            ),
                          );
                        },
                        text: 'Recover Password',
                        options: FFButtonOptions(
                          width: 200,
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
                              alignment: AlignmentDirectional(-0.98, -1),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
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
                              alignment: AlignmentDirectional(-0.14, -0.31),
                              child: Image.asset(
                                'assets/images/Allhorizontal.png',
                                width: 250,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.04, 0.28),
                              child: Text(
                                'Reset Password',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.37, 0.73),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50, 0, 10, 0),
                                child: Text(
                                  'Please enter the registered email address to reset your password',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF6D6D6D),
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.43, -0.09),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController',
                            Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email address',
                            hintText: 'Enter email address',
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
                          keyboardType: TextInputType.emailAddress,
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
