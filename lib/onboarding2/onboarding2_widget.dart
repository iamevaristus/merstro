import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Widget extends StatefulWidget {
  const Onboarding2Widget({Key key}) : super(key: key);

  @override
  _Onboarding2WidgetState createState() => _Onboarding2WidgetState();
}

class _Onboarding2WidgetState extends State<Onboarding2Widget>
    with TickerProviderStateMixin {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'pageViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(47, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
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
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Container(
                  width: 1000,
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
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
                                  'Welcome to',
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
                        alignment: AlignmentDirectional(0, 0.35),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: LoginWidget(),
                              ),
                            );
                          },
                          text: 'Let\'s get you started',
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
                        alignment: AlignmentDirectional(0.16, 0.07),
                        child: Container(
                          width: 300,
                          height: 150,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                                child: PageView(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/mcatd_1.png',
                                        width: 250,
                                        height: 100,
                                        fit: BoxFit.contain,
                                      ).animated([
                                        animationsMap[
                                            'imageOnPageLoadAnimation']
                                      ]),
                                    ),
                                    Image.asset(
                                      'assets/images/9hsjc_2.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    Image.asset(
                                      'assets/images/albfo_3.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    Image.asset(
                                      'assets/images/ml88i_4.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                    Image.asset(
                                      'assets/images/x5rbw_5.png',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.6),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 10),
                                  child: SmoothPageIndicator(
                                    controller: pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 5,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) {
                                      pageViewController.animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: ExpandingDotsEffect(
                                      expansionFactor: 2,
                                      spacing: 5,
                                      radius: 16,
                                      dotWidth: 10,
                                      dotHeight: 10,
                                      dotColor: Color(0xFF9E9E9E),
                                      activeDotColor: Color(0xFF07034D),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ).animated(
                            [animationsMap['pageViewOnPageLoadAnimation']]),
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
