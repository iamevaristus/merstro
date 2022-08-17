import '../auth/auth_util.dart';
import '../exchange/exchange_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../history/history_widget.dart';
import '../notification/notification_widget.dart';
import '../profile/profile_widget.dart';
import '../transfer/transfer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'columnOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
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
    'columnOnActionTriggerAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
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
    'columnOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
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
    'columnOnActionTriggerAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
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
    'columnOnPageLoadAnimation3': AnimationInfo(
      curve: Curves.bounceOut,
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
    'columnOnActionTriggerAnimation3': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
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
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 10, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                          ),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  reverseDuration: Duration(
                                                      milliseconds: 300),
                                                  child: ProfileWidget(),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: 40,
                                              height: 40,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://picsum.photos/seed/747/600',
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                'Welcome, ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF07034D),
                                                          fontSize: 18,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: AuthUserStreamWidget(
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    currentUserDisplayName,
                                                    'User',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF07034D),
                                                        fontSize: 18,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            PageTransition(
                                              type: PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              reverseDuration:
                                                  Duration(milliseconds: 300),
                                              child: NotificationWidget(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.notifications_outlined,
                                          color: Color(0xFF07034D),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 280,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 12, 50),
                                              child: PageView(
                                                controller:
                                                    pageViewController ??=
                                                        PageController(
                                                            initialPage: 0),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 6,
                                                          color:
                                                              Color(0x4B1A1F24),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFEE8B60),
                                                          Color(0xFF4B39EF)
                                                        ],
                                                        stops: [0, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.94, -1),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.94, 1),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        20,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Euro WIBAN Card',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        32,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Balance',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        8,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  '0.00',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            32,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 190,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 6,
                                                          color:
                                                              Color(0x4B1A1F24),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFEE8B60),
                                                          Color(0xFF4B39EF)
                                                        ],
                                                        stops: [0, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.94, -1),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.94, 1),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        20,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Dollar WIBAN Card',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        32,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Balance',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        8,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  '0.00',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            32,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 190,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 6,
                                                          color:
                                                              Color(0x4B1A1F24),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFEE8B60),
                                                          Color(0xFF4B39EF)
                                                        ],
                                                        stops: [0, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.94, -1),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.94, 1),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        20,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Pound WIBAN Card',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        32,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Balance',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        8,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  '0.00',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            32,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 190,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 6,
                                                          color:
                                                              Color(0x4B1A1F24),
                                                          offset: Offset(0, 2),
                                                        )
                                                      ],
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFEE8B60),
                                                          Color(0xFF4B39EF)
                                                        ],
                                                        stops: [0, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.94, -1),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.94, 1),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        20,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'LIBAN Card',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        32,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Balance',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20,
                                                                        8,
                                                                        20,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  '0.00',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            32,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0.82),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller:
                                                      pageViewController ??=
                                                          PageController(
                                                              initialPage: 0),
                                                  count: 4,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 9,
                                                    dotHeight: 9,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFF07034D),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircularPercentIndicator(
                            percent: 0,
                            radius: 25,
                            lineWidth: 6,
                            animation: true,
                            progressColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            backgroundColor: Color(0xFFF1F4F8),
                            center: Text(
                              '0%',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              'Finish up with your registration to get\ndomiciliary accounts and local account',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF00021E),
                                    fontSize: 14,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: HistoryWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDCDAFF),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: HistoryWidget(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.stacked_line_chart_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 40,
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.4),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 2, 3, 0),
                                            child: Text(
                                              'History',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF07034D),
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animated([
                                    animationsMap['columnOnPageLoadAnimation1'],
                                    animationsMap[
                                        'columnOnActionTriggerAnimation1']
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 300),
                                    reverseDuration:
                                        Duration(milliseconds: 300),
                                    child: HistoryWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDCDAFF),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: ExchangeWidget(),
                                        ),
                                      );
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.swap_horizontal_circle,
                                          color: Color(0xFF07034D),
                                          size: 40,
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0, -0.4),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 2, 0, 0),
                                            child: Text(
                                              'Exchange',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF07034D),
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animated([
                                    animationsMap['columnOnPageLoadAnimation2'],
                                    animationsMap[
                                        'columnOnActionTriggerAnimation2']
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: HistoryWidget(),
                                ),
                              );
                            },
                            child: Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                color: Color(0xFFDCDAFF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: TransferWidget(),
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.send,
                                        color: Color(0xFF07034D),
                                        size: 40,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0, -0.4),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 0, 0),
                                          child: Text(
                                            'Transfer',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF07034D),
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animated([
                                  animationsMap['columnOnPageLoadAnimation3'],
                                  animationsMap[
                                      'columnOnActionTriggerAnimation3']
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: 1000,
                        height: 155,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF07034D),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          border: Border.all(
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 4, 0, 0),
                                  child: Text(
                                    'Currency',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF07034D),
                                          fontSize: 16,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      100, 4, 0, 0),
                                  child: Text(
                                    'We Buy for',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF07034D),
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 4, 0, 0),
                                  child: Text(
                                    'We Sell for',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF07034D),
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'data:image/jpeg;base64,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',
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.contain,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 0, 0, 0),
                                    child: Text(
                                      'European Euro',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                            fontSize: 13,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        55, 0, 0, 0),
                                    child: Text(
                                      'N 634',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        52, 0, 0, 0),
                                    child: Text(
                                      'N 636',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://th.bing.com/th/id/OIP.MPTYM-6y6EclteWU4m5NVgHaFc?w=235&h=180&c=7&r=0&o=5&pid=1.7',
                                    width: 35,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 0, 0, 0),
                                    child: Text(
                                      'United States Dollar',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                            fontSize: 13,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        22, 0, 0, 0),
                                    child: Text(
                                      'N 581',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        55, 0, 0, 0),
                                    child: Text(
                                      'N 588',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAC0ASwDASIAAhEBAxEB/8QAHAAAAgMBAQEBAAAAAAAAAAAAAAYEBQcDAQII/8QAUBAAAgEDAQQHBAUIBwUFCQAAAQIDAAQRBQYSITETIkFRYXGBFDKRoSNCUqKxBxUzYnKCksEkU2Nzk7LRJTRD4fAWNURUg1VkZaOztMLS8f/EABsBAAIDAQEBAAAAAAAAAAAAAAAFAwQGAgEH/8QANREAAQMCBAMFCAEEAwAAAAAAAQACAwQRBRIhMRNBUSIyYaGxBhRxgZHR4fDBFSMz8SRCUv/aAAwDAQACEQMRAD8AZtldomnEel30n9IUEWkrkfTrz6Jj9sdnePEcXDpRj3TWMXCNDcTx5IaGZlBBIIKNwII45p20DaiO4WOy1SRUuRhYrp8LHP3CQ8g/jyPgea6mqdMj91pcVwu3/Ipxodx08R4Kdr20mtaL0kqbOTX1kvH2q1vAQi45zRJC0i+eCPGleL8q2WBk0MGM8zDfBmHHsDQgH4itG4g55Hspa1vYrZ3WeklEPsV8xz7VZKql275ovcb5HxpzG6LZ4WXJK6aVt7spqbxwm4ks7iQhViv06MM2OSyqTF94U1BlYBlIKsMqQQQQe0EVhd5srrGgX0TXapLZt0ns95BkwyPjAR1brK2CTg93AnFTrHVdW04g2V5NCucmMNvQk+Mb5T5VaNG14zRlV5KkRuykLZq9pDsNvGG6mp2eeQM1mcHzMUh/B/Smiy1/QtQwLe+hLnH0cpMMuT2bsuCfTNU3wPj7wUzJmP2KtKKKKhUqKKKKEIoo8eQ8arbvXdCssi51C2VhzRH6WT+CLLfKvQCdl4SBurKioGnarZarB7TZmRoumkgzIhjO9GQCd1uOO6k2XbvU95hFY2agFh9I8sh4HHNSoqKWRsPfVulpJay/BF7LQaKT9L22s5ysWpxi1kPATR7zW7H9YcWX5+dNsUsUyJLDIkkbjKPGwZWHeCvChkjZBdpXM9NLTuyytsvuivMjvr3NSKuiiiihCKKK8JCgsxCqOZYgAepoQvaK4i6tCSBcQE9wlQn4Zrt3EcvCg6IuiiiihCKKKKEIooooQiiiihCKKKKEIooooQsu1/RNXhv9Suls5JLSW4kljkt/pd1G49dF6w+FL3Ajw4itDudq4rDV7+wvrYiGGZUjuLYlnVGRXzJGx48+YPoa+9T0TSNftxfWEkC3DLmO6gx0M5H1Jwvb44yPHkaFRh72jO3mtLQY+02imGg0uP5CVNK2k1XTOjiLe02a4HQTMcqv9lJzHzHhWgabqljqtv7RaueqQs0T4EsLn6rqPkeR/DKrm2ubOea1uYmjnhbDo3jyZTyIPYa76ZqVzpV3FdwccYWaLOFnhJyyN+IPYfnWhqXxnK7ZMa/C4qphlhsHeGx/eq03VraC7sZ7eYZjkKA96nPBl8RzFZVeWk9jcS20w66HKsPdkQ8nU9x/65Vqhu7W+09Lq1kDwy7hU8iDnijjsYdoqou7KzvoxHdRB1XJRgSsiE8yjDiK0dNUcPxBXz+opy422IWdUYB5gHzpnn2UYn+h3g4kYS7Xhx7Okj//AFqkv9M1LS5VivoDGXBMbqQ8UoHMxuOB8Rz8KbMnZJo0pa+JzO8FV3Wr65p0tv7DqV9br0RJSGeQRnDnnGSU+Vdo9u9t4lCjVmYD+ttrNz8THn51V6t+lt/7o/5zVbQ6NjjqExgJyBN0X5Qts1dDJfROmeuPY7YEjwIWrJ9qtprhQ35zlCsMqYUgjBB8UQH51n9WmmXBybZjwOWi9OJX+deCGMf9QuZw4i7Srue8v7o5ubu5n/v5pJB6BjiuAAHIY8qKKmAA2SwkndPWx920GmSqoBA1OZmzn3THC3DFKF9H0V7fxYIEd1Oq5+zvkimTZLr2OroOcN5BN+5LDuE/dqp2hQR6vcj+uhtrkfvL0bfNT8ayeLsu4nofVbn2Yls8s6j0VTX0sk0YxFI6EHeXcdlAYcQcKa+aKQXtst0Wh2h1Wv2F2t9ZWV2vK4gjkPgxGGU+RyKWdZ1jV9ntXLQt01hfRrdC2uN4okmdyURP7y8RnHLrcuNebFX+/Deaa560Le1W+f6uQ4kUeRwf3qm7Y2PtWle0qPpNPkE3bnoJMJIPTqn0rT0UjZMpdsdF8vxOndTSvYOWo+C8i280YoDNa38cnaiLDIufBt8fgKjXG39uARaabKx7GuZUjAP7MYb8RSDRTkUcQSU1UhCYbvbDaO63gk8drGfq2kYDY/vJN5vgRVHNcXNyxe5nmmY8zPI8h++TXKirDY2M7oUDpHO3K83V+yvwFdobm7t23re4nhYcjDK8f+U1zryuyAd1zcq+tdrtpbQEe0JdKFbdjvUD5bHD6RN2T503bL7ZadtHv25ia01KKPpHtncOsiDgzwPgZA7QQCM+tZnVbY3baNr+nXqEqlrfwyPu9tvK25Ipx2brGqc9MxzbgWKv0spJLSV+h6KP+hRSVMUUUUUIRRRRQhFFFFCEUUUUIWU7Xru7Qan+utq49YEH8qr9M1XUNJn6a0kwrEdPC+TDOvc69/ceY+Rt9tk3dcZv6yytX+BdP5Us0/hAfEAeiSSktkJHVaGx0LbG0foX6HULNVyGAM1qzjIVwPeibv8AwIxSXqGnX+lz9BeRFGJPRSKd6KYfaift8uY7qpprjUNOurbVNPmkguIeoXjx7uc4dTwKnkQRjlT7o222g65EthrkVva3T4U9OAbC4bkCjv7jHuJ8mPKkddhmY52LV4VjMlO0B2renT4JVj1TU9MiuDZXDRCVo+kTdR43KkYJRwVz44qbbbaXylReWlvMuRlrfegk88ElPkKvtd2Lha3ll0ufomyji3uSzwkZ/wCHKMsPXIrPbq0vLKYwXcEkMozhXHBh9pGHVI8QTSljZYRYlaW9FiJzAAnnyK07TdV07VY3ktJG3493poZBuzRb3AFgCRg9hBP8qup7S01iwe1uwSCR1lwJI5F92RCe3/mO2sXtbq6sp4rm1laKePO6y8QVPNWB4EHtBp70bbe23jHf2ciMyZMloQ6Eg8+jchh/Eatx1I3cbFI6zB5Gn+yMzfNVOubC6+Iw9iIL4ROd0ROIZ2jbn9HKQuRw5PSVe6dqmmsE1Gxu7Rm932mFkRuOOrJ7h9DW92Or6RqR3bO6SSQDeMLBo5gP2HwT6ZqZLFDPG8M8UcsLjDxzIskbA9jK4I+VNo65xFzqkRhMJyOFj4r83Vd2C2zwwyrFGJUBjdgo3t4DGc+Ip51/8nVlcLJc6CVtbgAsbKVj7JKe6NjlkPdzHgOYRrO1v7Ge/tLy3mt54TGHimUqwY54jsIIxggkGmMMzJO6q1QOxdTaK9oqwlabNh5F9s1e2b3Z7KKTHf0UhU4/iqPtnbvBJpt7u5ETTWE5/VY9LGT97FVOk6g+l6ha3oBZIyyTqObwPwdR49o8RWha3psWr6fcJEVdLqBXikXiN8APFKPDlnwNI8ShzE+IT/CKoQSNd0OvwWY9gI7RkeNFRYJHid7adSkiO0eG4brKSChzUqsi5uU2K+qNcHC4Vhot4bDVdNuc4QTrDN4xTfRNnyyD6Vq0sUc8c0EozHMkkMg70dShrGHOEc9oUkeY4itnQkpGx5lEY+ZUGmdA42IWS9oogHMfzNx9P9rG7mB7W4ubZ+L280sDEdpjYoT8q5Vb7SRdFrusr9q56Uf+qiyfzqoraMdmaCvnbxZxCKKK+4op7iVYLeGWadvdihRnc+g7PE10ubXXxRnrKoyWY4VVBZ2PcqrxPwpu03Ym8m3ZNUm9nQ4Ps1qVecjueXig9AfOrl7zY/ZsNFbRRNdLlWS1CzXJP9tcOeHiC3pVKauiiG91ep6GaodlYLpOttm9pLoBo9PkjQ8mu3S3GO/dc7/3aqNf2V2ogfpDpdxNE0O60tiBcqCN4cRF1/u023e2mqylhZwwWqdjMOnn9Wfqfdr5sts9Vt2JvlS8i5kgJDOmOPVZBunyI9aVHGWl1uS0Ufs5Uxt4ml+l9ft5p32fvJL/AETRLqUMJpbG3M4ZSrCZV3JAQePMGrSqexvcy4JJiuW6SMnmC/WB49/bVvXB11VDbRe0V5mva8QiiiihCKKKKEIooooQs328XGq2L/b09R6pNJ/rSlTrt+mLjRpPtQXSfwvGf50lU+pTeJqS1A/uFeMqsGVgCrAqwPaD2UvXMBt5niPEDDLntRuIzV/NKkEUkrYIXGAfrMeS0uySPK7ySHLuxJP8qnKmpQdTyV/s/tDrtjItpFdPJYhGZrS4JkhXdxjo89ZeP2SPKnyG/wBD1yFbW5jiLv8A+FucZL45wvw492CDWb6VHhZ5j9ZhGvkvE/8AXhVlVeWlZKNRqu3VL4pbt5K31TY+4jLS6U5lTOTazuFlX+7kbCnyOD4mlue2v9Pce1W89swPAzIVQ+T+6fjTNZbRalaqI5Ql1GowonLCRR3dIvH45qxXaq2Ybs+nybh4MEmR1I8VkQD50llwx9+yFoab2icwAS6+qVoJiyxTISrA5VkJDIwPNWHGnDSNsJ4dyDVQ00WQFukAM0Y5fSqPeHiOPnXe007Y/X4ClmPZL5QzusCrDKMn3jD+jYd5Hypd1bRNQ0iQdOBJbu2IbmIHonzyVs8Q3gfQnsTSQzUjrhaSOqosWbw3b+fyK1CC4t7qJJ7aWOaF/dkibKnw8D4GqzV7O2u2RbuBJot0BN8cUIzndYcR6Gs6stQ1DTpOlsrh4WPvgcY5B+ujdU/CmBttz7MVvtPDvvJiS0k3MnPPo5QR96rcNa076FJqvApoyTF2h5/ZdDspps0iJDcXUG+2OaSqM+Dje+9XC52H1SPeNreWtwAMhZVe3c+APWX5iu9ttds/IyFpbi3cEMPaIGK5/ahLfhTjZ3tlqEC3FncQzxEcWhcNunkQwHEeopmysfyddIJsPMf+RhCyO5tLyymMF3BJBMBndkGN4faQjqkeIJp92Lu5J9Kmt3OfYbpoYu8QyKJVHoSwFX17Y2WowNbXkKSxNxAbIZG+1G46wPiDVbomhtok2piO46a0uvZ3iEg3Zo3j31Icr1SMEYIA5cqsSVAljs7QqoyAxSXGyRNtdOFvrV1PCuFu4obwqPtMNx2HqCT50vw3RGFlOV7G7R5+FP23KYuNIl7Xt7iP0SRWH4mkK6gC5kTgPrjHLPaP51lprcQtcvp2HOL6Vj/D00UtyDG5ByCjEY7RitojIaOJhxBjQjyKg1hNvPuHo3wY24cfq5rYtnbv2zRtNkJ3pIovZZuP14D0efUAH1qejGR5almPtL4mSDkT5/6SZtnH0Wts5/8AEWto48WwYsADt6tfOnbI63fKss/R2MLDK+0qzXDDv6FcY9WHlTlq9xoWmTW2qX0BlvhE9tZ7q78m6p323N87i43uLc+PpSte7ZaxcFltFiso+woBLOR4yOMfBRTmTExCwMG6y1Lgk1Y4yAdnqdlaQ7DaXCvS31/dSouGbBitYSB3txbH7wqS2t7JaFC8GnJFI3bFpygh2HbLcNwPxakG4u7u6cNdXE87k4XppHkYk9igk/IVbafsvrt/uO0Qs7c4PS3gIcr3pAOv8cUrkxGafssC0EeA0tIM9S+379fovdT2o1i/EiCQWlqQQYrYlSV7pJT1j48h4VAsdJ1fUcGys5XiPKZx0VuP/VfAPpmn7TtlNEsirvEb24XB6S7AZFPekI+jHwPnXe+2h0DTupLdrJKvAQ2YEzjswd07g9WFcsopJjeQ3K9lxqnpW5KRgA6n9ufml222HuGXevdQSMn6lnEZMeckuB92uF7sVqcQc2dxDdput9HIDDMRjkOaEnzFSbjbt8kWemoFzwa6mYsR+xEAB/EarbX8pk8N40Wr6dALdJGV57BpQ8QB98xSkgjvwwPnyq8cK7N8vmlkeP1Ln3D7+FtFSjaXaSWaJPbGgUNu7lrHHAFCgjdJUb3DzqZaa7r8ExNrf3ck0jDejJa6MjeMbhvwpmstmtmva45vYlm6WVpQZ5ZpVO/lhhWbdxx7qa4La1tlK21vBAo5iCNIxjxKgVSNNIXd6yZf1akY3K2G9+trfyl/Tbvb+73TcRWNnCcZku7djOR+pBHIDnzIpriEixxiR+kcKN9yoXePfurwFLtxtHZe3WWl6du3l5c3KQO6E+zQJxaRi6+8QATgepplFXRE6MDN5pBLUNnddrQPgvaKKK9UaKKKKEIooooQlDbPTdS1EaOLG1knaJ7sSbhjUIHEZBYyMB2UmybPbTR8W0q6I5/R9FJ/kc1rNxJDH0QkliQuSEEjom8RzC7xGa8AJAIGQe1cMPiKuRVbo25QqstMHuzFYpqOia68KqdOv0KPv4a2mwRjHNVI8qWJkkt3MdwjwuPqzKYz8HxX6S4jtI+Vcpre1uUMdzBBMh5rPEkqn0cGpvfurURxmMWvosStECWtqoIP0StkciW6xPzrtWiXmjaC80qrp9qqqQg6FOiC4ABC9HjhXlns5s9JNiSxV1VGIVpZyuQRzBfFTCtZ0KqupXk3us73kyF3hvHkoOWPkBxr1srjfDJnl0ismfLeArZLawsbUAWdnbwgcPoIUT7yjPzqLqMayPGrIsgEZ3gQrjBY4yDmuPfxfuroUZ6rKI5JIpIpYneOSNg8ckbbrow+spHbTFpG3ttIkumbURK3FoHvEhDwypy/pMK8f3lHjgc6uZ9F0WckvZRIx+tBvQt/8sgfKqm8/J7a6gguLLUpbeYZRkuolnjYjl1oyr/jXkk0Ews9SQRvidoVLuNlLG/T2zZ/ULaW3frCNpemhGeOEnjyw8mU+dLupbN7RwQuX0+WRYzvlrUrcKQOeBGd/wC7Xwuw+3+lTGfTJoGkHKTT79reRx4rKEHoSaY9K1f8pFoJI9Y0Oe7EZXdlRIlmZcY4SWrFCR+xSqTDYnG8bgtJFjtRC2z+0PHfyWdDdEm44IKsBIjAq4weIKnj8qu7aeezkjmtJXhkQdR4TunHdw4YrRW/Mm0AEGp6JexykYBv7GVGU/2d3EOH8Qqrl2EgEiC11GWO2yd5Z4hNMi9gRwVB9R8aXz0cjT2U5pcappGkSi3mFAh211qFQJ0sZgObyI0THzMbBfu0z6NrOo6pumXRri3gKki6MgEBPZupKFkOfAGvqz0DZ7R09oaOMsgy93qDozL4gyYRfQVDvtstIt95bNJb2UcAwzFbjzdxvn0X1rtmeIXlels3BrCWUcGvXUDyNvqoW3S/R6I3c16nxETUkMu8rKfrAr8RirTVdb1HWGj9p6JYomZoooUCqhYYJ3jlifM1WUvnkD5C5q0+HU76enbHJuqgggkHmCQfThT7+T3UiZNR0qQnJUX1vn9TdilX5qfjSdcwEkyoPFwPxH8666FfHTdZ0i7ziNLpIp/GGf6F8/HPpViF/aDlDX0/FgezwWnbWWMt7paNBE8txbXMTxRxKXkdZT0TKoHmD6Uv6fsZqdxuyahMtnFwPRR7styR3E/o1+9TzdXmn2I3r27tbZcc7iaOMkeAY5+VVM+1uzcPBLia4P8A7rAxX0aTdX51clihLs8hWZo6utbDwaZt/GxP4UzT9E0bS8G0tUEuOtcTHpJz5yvxHpgVC1ParRtP344pFvrsZBitpFMaH+1mGR6DJ8q5xbYbPTN0b+1wq3DengVo/wB7o2Y/KrL83aBeRJKLHTZ4ZBvRusEDIw7wyirUDoeW3QJXWRVTTmmBueZWdalr+s6oWWecx25Jxb229HDj9YA5b1Jqp8OGK1KXZbZibOdOjjJ7bZ5oT9xsfKqe92HtShbT7yWOQcRHeYliPhvqA488HypxHVRNFgLJK+nlOpN0i0vXw37m9B7ZJE//ABpsvtP1DTJDHfW7w8cK5GYX8UlHVPxz4UqXq7l3cAkddjKvEcVfjmrlwRcIpgQ8gp8tNrtQNrZtDbWiyJFEu+3Sv1kAQnd3gOyol9rWtakCt3eyvEf+CmIof8OPAPrmlvSpeE0B7MSr69U/yqz4DieXae6uGwsbqAuJnvDi0lN2wdl0uo318ygpZ24t4yeyWc5OPJR96tHpe2PsvY9Ds3ZSst6Wvpcjj9L7gPkoWmGk1S/PISmUDMjAEUUUVXU6KKKKEIooooQk/byINp+nS4B6O+KcR9uF/wDSkCOWeE5hlljPfFI6H7pFaTtqm/ojtj9Dd2snlkmP+dZnSas0lutvglnUljyJVnFr+0MAAj1O7wOAEjiUD/FBqS+2W0sETsZ7eU8FXpraI4J7fo92qOuVwAYJfAZ9QagZLICNSmUlFTvHajH0CsRtnrw95LBu3jbsD916l22120DB3RbKE8UV44CX7zjpGYfKlSKJpW3RwA4se4VZqoRVVeCqMCrElQ8CwKqx4bTE3MYU261PVr0k3V7cyj7LSsEHkiYX5VT3DzwTJJFLLGxQANE7oeB71IqZXxJGsqlW8wRzB76rNeQ65KYGFgbla0AL7t9pdorcri+eVVwNy7VZlI7suN771M2l7dSKjx3OnRO29vFreZ48jGM7sgYfOkSRHjYq3MfMd4r5DMpDKSCOIIq6JXgdkpXJh9PIe2wei1Ebc2R56bc/48X+lB25suONNuSfGeIfgtZ5DdI+Fkwrd/1WqTURqpm7lAwaiOzfMpzk26fiIdLQeM10zfJEH41XXG2O0EwKxG1thyzBDvPj9qYt+FLtFRGpldzU8eFUbNRGPnr6rvc3V5eP0l1cTTv3zSM+P2QTgegrhRRUBJJuUxa0NFmiyKK+o0lmkWGGOSWZuUUKNJIf3UBNTLzStV0+K2mvbcwLcs6xqzqzgoASHCEgHjw417lNrrl0jGuDHGxPJQag3UIQiRBhSesB2HvFTq8dQ6Mh5MCPjXrHZSvXNzBVLEsxdiWc82YksfMnjU+0k349084+Hp2VAIwSDzBIPnUizbEpX7Sn4jjViQXbdV2EA2U+p+m6vqelOzWc2EY5khkG/BIf1k7/ABGDUAkDiTgePCvAynkynyIP4VVa4tN2mynkjZK3I8XCebbbi3IUXthIjY6z2kiupPeElwfvGra32o2cuMD2zoGPALdRvHjzYAp96sxoq42tlG+qTS4HSv7t2/A/e62UdBcxHdMU8DjjulJYmHplagzaFs7cLuz6Ppkgxgb9pASBz4ELmstguLq1fftp5oH+1BI8Z9d0ipza/tEyhTql7gd0m6fUqAfnVpuIADYpU/2dfm7Dwfj+lWm0myWj6cg1TS4DalAy3VvGzGBo2x9IiuTukHGcHGDy4Ut21sby5s7MHHtdzBbEjmFkcKx+Gau9I1i+kvILK+uZbi3vTLCBcuZSspQlcF8nDYKkeVMum7MaPHdWWowvdRyW1yZRD0gaHeAKgYdd4Djn3uyndJiAfEbrNYlhklNOGuN9E2oiRokaKFRFVEA5BVGABX1Xle1TXSKKKKEIooooQiiiihCo9q1DaBq2fqJDIP3Jkas9stn9fvwrw2bRwtylvD0CEd6qw3z/AA1rUmNw1x8arS0zZXBzimlJiklHEY4wLk3us9bYrXgMrNpznuEsy/Mx1X3Wy20qJIvsLSKeBa2lhlOPBd4N8q1KvHdY0d2PVQZPee4Dzrg0MfLRTtx6qHeAPy+yx86dqFriN7C8iI+q0EufMkCu9rpOs3rbttY3DcMlpF6GMDOMl5cCtAYyyOzkMSx3jjP8q+4Luys5JGu7q3gUxn9PMiHIIOApO98q49wBO5KnPtDIG2DAPRLlrsPeOA17fxQnh9HaxmUjwMkhUfBa7ybCrg9DqkmccBNbIR6mNgatZ9rtmoSQtxPOR/5eByvo0m6KgSflA2ZhkCTw6nErcVkNvHIjDt/RyFvTFWxhzbdwpccdqnO0f5BUN/sTrqr9F7PdBc7rQSbkg8Ck2B96li60rUrJit1bywn+3R4wfIsN0/GtWtdrdj7xkSHWLUO/BUuRJbMSez6dQPnV0piuEyhjmiYfUZZYz8MioXUWXa4VyLHZR/laHeRWCtFMoyUOO9esPiK9jnmi4Kcp9luIrbJtB0Kcky6TaFjzZYAh+MeKq7zZnYq2jlnnsLC3bdLK1xM6qSOOAskmD8Ki91e7TQq9/XYAL5SPos0juYH4FlRu1XYA+mamQWt9dEC1tLqcnl0MMjL5lsbvzprgvdkLFv6MbCJh9a3tGJ/jEefnVidsdFhTdZri4YDq+zwlVbwJlKj5V03C3uP4UMntMwDsN+pS5bbI7RXGDJHb2ikA5uZQz/wQ734ir2z2I06PDX11PdNwzHF/R4fXdJc/xCvuz1jaPX3b82W8OnaeDuvfTr7RMxB4i3VwIy37pA7zyq/mmttMsnnuZpTDbR5kkmffmkbsGTjLMeA5egqb3GOHv7pa7GqupOWM2v0H6VGM2iaK+m2MUUNs1/MIYY4EVew/SSkccZwoJJyT8Oe0dib/AEi8RRmW3HtcPfvQgllHmu8KznU9RudQvLi/mYo7MpiAPCBIz9GiY+z+PHtrVbKW4ms7Ka5hMU8tvE88T4yrsoLKQKiilE+ZgGinq6V9Bwp73dz+I1/Cx+ipuq2f5v1LULPGFhmbovGJ+vGfgRUKk7hlJBW4jeJGh7diqy6HRyTHHD3x6jNO2k7BSSexXl5qkZgkjSYR2MTBpI5EDD6aU8Of2KUL1eMb471P4itR2KvPbNn7BCcyWTS2D554iOY8/ulaY0wa/RyQ4vNNTxh8Rtrqp1rs7s9Z46PT4Hb+suR08mfOXPyFSZtL0edSk2n2TqRjBgiBA8CoB+dDtFfieOy1KSKa2keKU2jRM8UiNusssMykdnaPWqO8j/KBahntr+C/jGThbe2jnx/duuD6NV14EemRZiEyVLrmax8SfXZRtT2LhYNLpMpjfn7NcszRt/dynLD1z6UnXVtd2UphvIJLeUdkw3Q3ire6R5E1eNtZtRBI0UxhWVfejns1SRfNTg1daRtNaanix1iO2WZ2xE7IptpieSsr5Ct3dh8DzXObBK6zdCtNFJX0ceaUCRvgdfyEh5HeK+ekiH/ET+If61ol3PsFpt6bTUbKysrggPE11Y4gnT7cUqq0eByOcEdoHbcWb6BcKPze+lSrjIFobVvlHx+VSf059rkqE+0UfJh+qyF5CF34ZAJoWSeIqQWV42DggelOGnbc2KxlZbG5NwyBmWN4hCZAMEqzHewf2ac7rTdOu4nhurSF0cEHMaK6+KMACD3caxjUtPudK1e504K8k0U+LZUUtJPG/XjZFXjxH/XCugySnFmm90MnpsWdaVti3x5LTtO230m7cR3cb2RJwsjuJYe7DuACD5rjxpqVkdVZWDKwDKykEMDxBBHDFYlf6dq+lCC6urOWK3ut3iSrJvkZ3SyEgNjsJ7Ku9ndpZ9LaOORmm0xz14+bQd7w+Xav8+fsdS5ptKoanCI5GcSkN/C9/oVqlFcoZobiKKeB1kilVZI3Q5V1bkRXWmCzBFtCiiiihCKKKKEKv1mSeLSdXlt5Gjmis7iSN0OGRkQtkVl3/aDaPn+db3/E4fhWq6ou/pmrJ9uwvF+MLCsWHIHwFM6FrXNNwl9Y5zSLFWv/AGh2k/8Aal5/Gv8ApXw+u7QOu62qXpB5jpSPwqtophw2dB5KjxHdVJkv9SlBEl7duDzDTyEH0zio3M5PPtJ5/Giiug0DZckk7oqNfor2sxI4xgSKe4ggVJqHqUgS2KdsrKg/ZU7xP4V6V3FfOLKnhUtNAg5mWP8AzA5pmR5IzvRO8ZznMbsh+6RVBp4Bu4c9gkK+e4ava8GqsVROYBTPzprGMfnHUMd3tU+P81RGZnYu7M7k5LOSzE+LNxrtaWd/qDmOxtZ7lgcMYUyin9eRsIPVqY4NjrqNI5tSuEQMwHs9od9hwzh5mGPgp86ifLHFuVAxj37JXRZJJEiiR5JX9yONSznyApl0zZrik2pYY5ylohyvh0zLz8hw781YyT6FoMZhSNVlIBMEGGnfPIzOxJHqfSlnVdpNdnDpb7tnbEYPspYzFe55j1h6AUoqcTAORpt6p9Q4JNOA8jTqdvyneXaDR9FCW17cKu6AscEC780KgcA0acFXuzilLW9eudZkVQOisom3oIAc5bGOllI4Fj2d3IdpZPJ95mOckszMeJJ5kk0xbOaNeanNE04ki0ne+klwVkmx9S3zxwfrNjAHLjySTPkm7LVr6ajpsOHHkNyOf2CvNldHS5kOsX2FsLItJB0mAkksXFpmz9SP8R+rTTo2uQay+qiJNxLWeNYM535IJE6sjg9pIbh3Y7aWNptbtmjXRNL3VsbcJHO8OBHJ0fBYY8fUXtPafAdbhsZddDq7QMcLe2skYHYZIiJV+W9TqnoeDASd1jq/E3VlTc7bKTtvAqX+n3AABuLQo/iYXIBPoRSpTxtzC5h0e4AykclzA57jIEdc+e6aR6zdULSlb/B356Nnhp5rnMnSRuvbjeXzHEUz/k6vCtxrNgx4SRQ30Y/WjboHx6FPhS5U7ZBzBtTZIDhZ4r6A+IaEzAfFRXVK6zwF7isQkpn/AA9F311prTaDV5IJJIpVu3kR4mKOvSKr8GXj21Z6dtpqMG5HqES3cXIyriO5A7yfcPqB51X7VDGv6r4m2b428ZqkrcNjZLG3MOS+SmRzHnKea1OObZraWAriG5KLlopl3LuDP1h9ceYJHjSprmy02nRy3do7XFkvGVZAOmgXvYjgyjtOBjt76V+mltw08Mjxywo8kckTFXRlUkFWHGnPY3bE6z/srVTH+cxGxgl3QEv41Ul1ZPd6QDJI5EZOOBFKKzDmkZgn+GYrPDsdOY5FVltqdhqFmmjbRI01nkey3oP9KsXxgNv4JwO/jw4EEclrXdmNS0JhOd2602Qg22o24BjZW4qJd0ndJ88HsPYGfaPQm0udri2Q/m2dsxkZItnP/Cc932D6cxxjaVrl5pge3KJc6fLvCezuAGjZW97cyCAT28CD2jtC2lr5KR3Dk1C0VVhkVcz3mk3PL92KWbLaLaXTgos9VvEVPdjkkM0P+HNvL8qedndpl2gknF9bWkGq2Vp0j3cYWNJ7NWwxJc7y7pOWG8R1s8OVV11sts/rYe52ZuktLwqWfSb1t1C3MiFjkj03h+z2JeoaZqulTiHULSe1kYlVEy9STsPRyDKMPJjWgBgq23buss+OSB2V4sVpku12xd1Fc6PfPcyWkoaJ7lbcm2xnIZCD0vVPFW3PGlpdmtcjlZ7L2W8sZCXtrmO6iEd1AfdkUDOD3+INKFXuzWuy6RexQTzMNKuGcTocssEjDInRRk88BsDiD3ioKnDmPbcX0VqjxGakvw9itO2Uste05Zbe89mNjKvTW4jmLyQyn3lA3QN1uZ48CPGmsdlLljr+zjQKPzzpYKHC791EhK+8ODkH5Ve211a3cSz2s8E8LFgstvIkkZKndIDISOHbS9sRjaG6/NcTTmokMjgAT0XaiiiulEiiiihC5TrvwXCfbhlT4qRWHD3R5Ct2/wD5WGOu48ifZd1+DEUzoD3h8EvrR3SvmiiimiXIoortbW13ezLb2kLzTHiVXACL9qR2woHma8JAFyi19AuNVV8tzeXsdpaQT3M0cagQ2sbzSbz9YkrGCe7nWnaZsTbqEl1aczOcN7NasVtx4PJwdvHGB500BdK0mDAFnYW//pQKxAx4En41QlrWN7uqY01O8OuQso0v8nu1N00U109vpcYIYGY9PdDuIhhO6PWQeVPtlsboNqEa5El9MMbzXRCxFu8QR4T45r7udsNn4MiJrm6Ycugi3Uz+3Nu/gapLvbbUZN5bK1gthyDykzyjxGQE+6aUy4mNRm+iexYNUTkHJ9dPynZ2srC2Lu0FraQjhkLFEo7lUADPcAKTNa2tM4e10tSkWetdyLiV8f1Kn3R4nj5UsXd7e3snTXlxLPIM4aVshB3KvugeQFS9K0PU9YYNbp0VqGxJeTA9EO8RLzY+XDxpTJVPlOWMLRU+EQUbeNUuBt9Pz+6KvjS4uJkihjlnuJmO7HGC8jseZ/1JNNljsY3RG41i9W2jUb8kUDRgRpj/AItxIN0eOF9atHl2c2QtzFGhmv5FUugZTdT8ODTvyVO4Y8gazbarW9W1aW3NzOwtt1+jtIiVt0KtnO72njzOT5cqv0mFF/akS2t9oXPfwqbQdef4V/eXn5LdKlHstvc6jcoQMpme3U54kNcEJ8FNfF/tJPqERisvoLKRd07pBmlXtV3HId6j1zWfVLsrkwSqCfopCA4PIE8m9K0EVJFFsFnKqSacXc4kq9rrbXEtpcW11D+ltpkmTs3ihzunwPI+dcq9q4QCLJLc3utZkSx1/ScK2be+hDxvjrQyA5U4+0hGD5EVltxbz2k9xbTruzQSNFIOzeXtHgeY86vtk9ZNjdjT53xZ3sgEZY4WG6bgDx7H5Hxwatds9L344tWiXDRblveDHOMnEch8j1T5jurJYnSFpzDktx7PYjlfwnbO8j+Uj1YbNxltqtDZRwC3kjHuCW0in8RVfVzsxcwWmt2UkoAWeOayDt9Rp90qfUgD1pPAQJASthXAmmflF9Cvdrf+/wDUf2LP/wC3jqiq+2t/7/v/AO7s/wD6CVQ19Ah/xt+C+NS98r4nH0Fz/cy/5TS7FLNDJDPBI8U0LpLDLGcPHIh3ldT3imUjeDL9pWX4jFK/Lh3cKkcrdIdCt02b1202l0sNKsRukQQanasAy7+MFwh+o/MfDmtV+p7GQyFpdKlWAnJNvcFmhz3RuMsPI5FZloNxdWlzLc200kM0ax7jxnBGSeB8O8VpmlbaW8gSHVozFJwHtMClom7MyRjrD0yPAUkqsPDxcC49Eyp8SkpJLMdb0KUbyw1LTZFW8t5rdg3UkP6MkcjHKvV+easrbaO/SL2TUY4dTsWG68F+okbd/VkYE/EGtHSS1vId+N4bi2lBGVKSxOO48x6EUvajsfpdzvPZE2Ux4hUG/bMfGM8R6EeVJDSyRG8TlpmYvTVbeHVs+fL7hJFzpOx2pSyDTLx9JuTxS1v8takkZwrknA7sP6VRans/rumq8lzZyNboN72q2Bnt90/WLpxA8wKuNe0DV9KkWS4g6S3ZP94t96SHqnHX4bw9R61x0TXNW0uYLaXTdC6kGCT6S3Yc8FG4fDFMIcTliFpRdQy4NFN26R+iWUbeA4g9uRxyK0z8l+oH/belO3VUw6jbr3b/ANDKB6hD61EmsdldpFl6K3j0fXGyytb8LO7btzHyz6A+Lcqotnri42d2psBer0JSdtPvQW6oiuRuBww4Fc7jA91NRPHWQnh7rPzQSU0mWUWK3SivAa9pWhFFFFCF53edYpfp0d9qSfYvLtfhKwra6xvW13NY1tf/AIhdn0aQt/OmNAe04KjWd0Kvoo4DJPIcTmrzSNBkvdy5vFaOzOGSI5WS5B5E9oT5ny4llJI2MZnJexhebBRtK0e41NukLGKyVirzY60hHNIQeHmeQ8TycooNP021cIIba1iG9LI5woP2pHPEsfU1zvtQ03R7VJbghEC7lrbQhRLLujAWJOQUdpPAePKs71bWtQ1eUNcMEt4yTb20Wehi8e8t3k/Ks/V1pcf4Wnw3CXTa7Dmfsma822kR2ttJ3o4Gypu5l65PLMUTcFHicnwFUc009xI0txLJLK3N5XZ3P7zEmqRVd3SNFZ5JGCRxxqWd2P1VVeJNPmg7KL7K95r9wsMEOG9nWUR9GnD/AHmcfgp9eyk72STnRbBjqTDGai3qUuRpJNIIYY5JZTwEcCNI5/dQE1e2eyW0F0BJMkVjDjLPdsC4XmT0cZ/FhU662psbBGtNnLK3hiGVNy8QUN2Zji4E+bH0pbvNT1TUGLXt3PPx4K7YjHlGuE+VMoMFLrGQrP1ftS7VtO35lMiWmwekMHu7ttVukwRHGBLEG8ET6L+JzXDUNstQnQwadCljAF3FdcPcBcYwpACL6D1pWop3BQQwjshZWqxKoqjeR37+9F9MzOzO7MzuSzsxLMzHmWJ45qt1VcxQP9iQr6Ov/KrCouoLvWkx+wUf4MB/Or3JVIjZ4KoaKKK4TZMVq5kt7dzzKAHHeOqa7VE07/c4fOT/ADmpdSBJ5BZ5AQRkEZIz2jmPKtW0uVNa0O0a663tlo1tdduZBmF2HjkZrKa0XYpy2iuhP6K/ukXwDBJMfOqFc0GO5VmjeWyaJAlieCWaCQfSQyyQuP1kYqfwr4+I7iOBB7wat9pIui13V1x704l/xY1k/nVRWEeMriF9kgk4sTX9QCpGoXs+oXPtU+OmeG3ilYfXaGMRb+PHGTUSvsjIxXxW0wuqE8OU7t0Xy/HsO9zqcze67UfyF6OYpbnXcnnT7MsgHlvGmOqG/G7d3Piwc/vKDTQpVSntEKXpK9W5fHN0T4An+dWdRbCMxWseRhpMytkYPW5A+mKlV6FDM7M8lSLS9v7CTpbO5lgfhkxMQGx2Op6p9RTVYbbzKFTU7RZBwBntMI+O9omO6fRhSbRUUkLJO8F4yVzNitUi1bQdUjCW9/CJj7kcxMMu8RjBWTGfQmqLUtl9LuJC5hezuwwbpLYKqsc82i9w57+HnSRz4HiPGp1rq2q2ahIbqTohyhl+lix4I+cemKoS4eHDsm6YQYjJCczdD4KXq2hajpDCSQCW0Zh0V1ACFBPFRIPeVu7j5GuGqWp1/S2vEG9q2lxbl0FHXu7PiQ2F+svEj1HaKZ7LbKzuUNtq9oiJIhjkkhUyW7KeBEsLZbHfgmq29tV0K7s9X0uQXGk3LYRon390NgtAzfNCePDB4jimMMmHyCUd3mtSytjxeHgPtxBsevgmPYjXxrWkxxTyh9R08Jb3WT1pUx9FP+8OB8Qaa6yS8SXZzULLa7Ql6XSbtzHqFvFwSIyMpkhYfVV/eTPusMcsA6lY3tpqNpa3tpIJLe5jEsTjtB4EMOwg5BHYRjsq7K0G0jNikVi05XbhSaKKKhXq8rItpUKa9rCAEl7pSqqCWYyRowCgccnNa7SxeabZxave6hu79zOIiHcD6JRGse7H3ZxxPPjVmmlETi49FXnj4jQEuaTs8Iyl1qKq0gw8VscFI+0NL2FvDkPE8p+s65aaPFg7s19IoaC2yeAPKSfHEL3DmfAca4a9tBDpKtb2+5LqbAdQ4aO0BGQ8w7W+yvqe455NNNPLLPPI8k0rl5JHJZnY9pJqlU1bnHxT3C8IzgSSCzfX8Lpd3l5f3ElzdzNLO+Ms3AKByVF5BR2AV821tc3k8NraxNLPKTuoOAAHNnbkFHaa9tLS7vriO0tI+kmkycHgkaDnJK3Yo/5cTwp+sLAaLA1tpVlPqWqzBfaJliIiVuwzSsQioPqpvZ7+81IoXTOT+uro6GPKBryC5WdjpGy1sLi5YT6lMhAZQOkfsKQBvdjHaeZ8eQotQ1S+1J8zvuwq29FBHkQxnlnHa3ieNMUWxu0WozNc6peQQPIcvgm5nwOQAXdjA7sE1d2uwuz8O6blrq7Yc+lmMcZ/cg3fxNaCE09MOpXz+ofUVjy5/ms0r2tei2c2ZhGE0nT/AN+BHPxfJok2b2Zlzv6TYeaQqh+KYNS+/s6FQe5O6rIKK1KXYvZeTO7ayxcMfQ3M6j4MxFRxsJs6DkvqBHcbnA+KqD867FdGeq4NJIs2rnMm/DcJj3opAPPdJFaxHsfsrHjOniQ98888nyZ8fKur7K7LOpX81Wq5BGYg0bjPDgyEGvDXR9CuhSPGt1+faKYtqdl77Zy64782mzuRZ3eO/JEM2OAcfA8x2hV2rLHB4zBX9lfaeMWcHjvn4ual1wtRu2tqP7GM/EZrtUySvN3FFaDsMf8AZl+O7UX+cEVZ8SFBLEADmTwArR9ibO8g0y5a5gkhW5vDPAJRuu8XRIm/uniASDjIqnWEcOxVilF5Er7WEDX78fWKWgAGSWPQJyA41T3tvf6dZx395Y3kVrJMII3ePcLSMpcDdchgDg4JFbIlhYR3M14ltCLqbd6ScoDKwVQgG+ePIVw1nS4NZ0y/02cgLdQlFfAJilHWjkHipANZV1GHOLnHdbmPGzFEyJjdgASfssKOsx9ls+O8yLn4btSbe9trk4TeWQDJR+eO8EcDVHcwT2lxc2tyu5PbTSW86fZkjYqQP5VO0+znEkdxIDGqhiing7bwK5I7BVvD43Rzgxj4/BQYtUCemLZiOo+Kt6rZLU3GoSswPQxiEv3O24Duf6/86saK1awzXlmyK9r5Vlc7qHfb7MfXb4Lk1Li03WJv0Om6hJ29W0nxjzZQK8JA3XNiVFoq4g2Z2ouMbmmSxg/WupIYQPQsW+7VtbbBaxJg3V7Z24PNYUkuHHq24tQunjbu5SNhkdsEo0HAGScDvPAVpFtsHocYU3M97dMOYMghjPksIB+8at7fZzZq24xaVZb3DrSxiVv4pd41XdXRja5U7aN53WPB4zydT5EH8Kn6dqZszNCwWeyusLeWxIIcA8HQZ4OOw/8AQ2NLe2i4RwQoOXUjRfwFcLnTNKvAVurG0mB4fSwxsR5HGfnULq1rxlc3RTMpXsIc12oWcCS60TfmtNy90XUU3XinUtBNG4x0c69j44Zx/oGDY8aZBJdx6VeSJYz5nbSL3rT2NwT1mtpc5aJu0YPEA54kVcRbN6bbLcJadJFBMCWtpGM1tvHmwSTJGe0BseFVN9sZbmQXOmXDWMykOqLvvAr98RBEi+hNJi18JIh1aeRWkbPDWNAquzJ/6Gx+IThmvaWbLUNo9PAg1qykuoV4LqGnATkL3zwoBIfMJ6dtX8F5Z3MaywTxSRnhlWHA9xB4g94IqRrw5UJIXRnqOo1C70r7XXVxYWF7d2zblwkUCRuQCU6SYRllB4ZAJxRRXru6V5AAZWg9R6rIGyzMzMzMxLMzElmYnJJJ45r5bgrEdgJoopUvooGq2TZPRtKs9G02eK3U3F9a213dSy9d5JHQNjJ4YGeqMcPmWTAHKiimbdGhfPakl0zyeq9oooqRV0UUUUIRRRRQhFFFFCFwurW0vLee1u4Y57adDHNFMoZHU9hB+X/KsD2o0yy0jXdV0+zEgtrdoTEsjl2USQpKV3m4kDPDNFFX6EnMQuXKVbD+jW39zF/lFdiKKKbhIXblaFsloWjmxsdVkg6a9lDOrTnfSEqxX6FD1R54z404YoopBUEmQ3TmAARhe14aKKhUyyrbbT7KLaRbpIgJbjTbe4lPYZhJJD0mOWcKo9KocCiinFCBwb+KWV5JmAPQKy0TT7fU9St7O4aVYpMljCwV+HcSDWjW+ymy9ruldOilYfXui9wxPf8ASkj5UUVFWucCACuqRoIuQreK3toF3YIYolHIRRog+CgV0oopZumG2y9ooorxdIooooQiiiihCKDRRQvCvgqpPL4cK5SWNjM2/LbwyPjG9JHGzY82GaKKCuttl//Z',
                                    width: 35,
                                    height: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6, 0, 0, 0),
                                    child: Text(
                                      'Great Britain Pound',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                            fontSize: 13,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        23, 0, 0, 0),
                                    child: Text(
                                      'N 741',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        55, 0, 0, 0),
                                    child: Text(
                                      'N 756',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF07034D),
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
