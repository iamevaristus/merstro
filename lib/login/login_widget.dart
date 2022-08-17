import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgotit/forgotit_widget.dart';
import '../main.dart';
import '../onboarding2/onboarding2_widget.dart';
import '../signup/signup_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
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
                child: Align(
                  alignment: AlignmentDirectional(0, 0.1),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.02, 0.27),
                        child: Text(
                          'Don\'t have an account yet?',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF07034D),
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.02, 0.18),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await signInWithEmail(
                              context,
                              emailAddressController.text,
                              passwordController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: NavBarPage(initialPage: 'Home'),
                              ),
                            );
                          },
                          text: 'Login',
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
                      Align(
                        alignment: AlignmentDirectional(0, 0.02),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: TextFormField(
                            controller: passwordController,
                            onChanged: (_) => EasyDebounce.debounce(
                              'passwordController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: !passwordVisibility,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              hintText: 'Enter your password',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFF07034D),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () =>
                                      passwordVisibility = !passwordVisibility,
                                ),
                                child: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
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
                                alignment: AlignmentDirectional(-1.03, -1),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: Colors.white,
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
                                        child: Onboarding2Widget(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.1),
                                child: Image.asset(
                                  'assets/images/Allhorizontal.png',
                                  width: 250,
                                  height: 100,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.95, -0.55),
                                child: Text(
                                  'Welcome back!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.15),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 8),
                          child: TextFormField(
                            controller: emailAddressController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              hintText: 'Enter your email address',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFF07034D),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.06, 0.12),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: ForgotitWidget(),
                              ),
                            );
                          },
                          text: 'Forgot Password?',
                          options: FFButtonOptions(
                            width: 150,
                            height: 20,
                            color: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF00021E),
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: 0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.04, 0.37),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupWidget(),
                              ),
                            );
                          },
                          text: 'Signup now',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF00021E),
                                    ),
                            borderSide: BorderSide(
                              color: Color(0xFF07034D),
                              width: 2,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ],
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
