import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile/profile_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsofServiceWidget extends StatefulWidget {
  const TermsofServiceWidget({Key key}) : super(key: key);

  @override
  _TermsofServiceWidgetState createState() => _TermsofServiceWidgetState();
}

class _TermsofServiceWidgetState extends State<TermsofServiceWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                              alignment: AlignmentDirectional(-0.89, -0.89),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProfileWidget(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.04, -0.28),
                              child: Image.asset(
                                'assets/images/Allhorizontal.png',
                                width: 250,
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.33, 0.54),
                              child: Text(
                                'Terms of Services',
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: AutoSizeText(
                            'By signing up for an account on this app or website, \nyou agree to these Terms of Service (the \n“Agreement”).\n\nMerstro provides its services to its users as a \ncompany under registration in CAC, Nigeria. \nThe Agreement contained herein on this webpage \nis a Legal Agreement between you, as a \nprospective Customer/Merchant of Merstro’s \nservices and Merstro(”Merstro”, “we”, “our” or “us”) \nand shall govern your access to and use of our \nservices which include all pages within the our \nwebsite, mobile applications and other products \nand services (collectively referred to as the\n “services”).\n\nThese terms apply in full force and effect to your \nuse of the services and by using any of the \nservices, you expressly accept all Terms and \nConditions contained herein in full and\nwithout \nlimitation or qualification, including our Privacy \nPolicy. you must not use any of the services \nif you have any objection to any of these terms.\n\nPurpose and scope of agreement\nThis Terms of Service is an Agreement between \nyou and Merstro. It sets forth the terms and \nconditions that shall govern the use of the \nPlatform and the services. It details Merstro’s \nobligations to you. It also highlights certain \nrisks on using the services and you must consider \nsuch risks carefully as you will be bound by the \nprovision of this Agreement through your use \nof this website or any of our services.\n\nRegistration\nTo use Merstro, you have to create a Merstro \naccount by registering. To register, you will provide \nus with certain information such as your email, \nfirst name, last name, business name and phone \nnumber and we may seek to verify your information, \n(by ourselves or through third parties), after \nwhich we will approve your account unless \ndeemed risky. You permit us to do all these.\nIn the event that you change any information \nprovided to us at registration including your \nbusiness name, address, financial institution, \nmode of payments or the products and services \nthat you offer, or where a corporate \nrestructuring occurs, You agree to notify us \nwithin 14 days of such change. We may be \nunable to respond to you if you contact us from \nan address, telephone number or email account \nthat is not registered with us.\n\nAccount Security\nYou agree not to allow anyone else to have or \nuse your password details and comply with all \nreasonable instructions regarding account \naccess and security. In the event you share your \npassword details, Merstro will not be liable to you for \nlosses or damages. You will also take all \nreasonable steps to protect the security of the \npersonal electronic device through which you \naccess Merstro’s services (including, without \nlimitation, using PIN and/or password protected \npersonally configured device functionality \nto access Merstro’s services and not sharing your \ndevice with other people).\n\nAge Restriction\nOur website and services are directed to people \nfrom the ages of 18 and above. You are only \npermitted to use the Services if you are aged 18 \nor older. We do not knowingly engage people \nyounger than the age of 18.\n\nSoftware License\nFor businesses, we hereby grant you a revocable, \nnon-exclusive, non-transferable license to use \nMerstro’s APIs, developer’s toolkit, and other \nsoftware applications (the “Software”) in accordance \nwith the documentation accompanying the Software. \nThis license grant includes all updates, upgrades, \nnew versions and replacement software for your \nuse in connection with Merstro’s services. \nIf you do not comply with the documentation \nand any other requirements provided by Merstro, \nthen you will be liable for all resulting damages \nsuffered by you, Merstro and third parties. \nUnless otherwise provided by applicable law, you \nagree not to alter, reproduce, adapt, distribute, \ndisplay, publish, reverse engineer, translate, \ndisassemble, decompile or otherwise attempt \nto create any source code that is derived from the \nSoftware. Upon expiration or termination of this \nAgreement, you will immediately cease all use of \nany Software.\n\nWarranties and Representations\n\nYou represent and warrant to Grey that:\n\nYou have the full power, authority, regulatory \napproval and corporate authorisation to enter into, \nexecute, deliver and perform this Agreement.\nYou are duly organised, authorised and in good \nstanding under the laws of the Federal Republic \nof Nigeria or any state, region or country of your \norganisation and are duly authorised to do \nbusiness in all other states, regions or countries \nin which your business operates.\n\nChange and Fees\n- You agree to pay us for the services we render. \nOur Fees will be calculated as demonstrated \non the Pricing page on the website\n- Subject to the terms of this Agreement, \nMerstro will send to your designated bank or card \nsettlement account (“Bank Account”) all amounts \nsettled and due to you from your transactions, \nminus our fees as stated in the Fee Schedule, \nany Reversals, Invalidated Payments, Chargebacks, \nRefunds or other amounts that you owe to Merstro \nunder this Agreement (“Payout”).\n- Should either Party in good faith have cause to \ndispute any amount appearing on an invoice \nsubmitted by the other Party pursuant to this Agreement \n(“**Affected Invoice**”), the affected Party shall, \nwithin Forty-Eight (48) hours of receipt of the Affected \nInvoice, notify the other Party in writing, of such \ndispute, specifying the Affected Invoice, the specific \namount in dispute and alleged reasons or grounds for \ndispute, failing which it will be deemed that the \ninvoice is true and correct.\n- We reserve the right to revise our fees. In the \nevent that we revise our fees, we will notify you \nwithin twenty-four (24) hours of such change.\n\nIntellectual Property\nUnless otherwise stated, Merstro and/or its licensors \nown the intellectual property rights and materials \non the website subject to the license below. \nAll text, formatting (including without limitation \nthe arrangement of materials on the Merstro \nwebsite and the graphics, animation, tools, \ncommercials, music, video, articles, sound, \ncopy, trade names, logos and other materials \nand information on the website are subject to \nthe intellectual property rights of Merstro and\nits affiliates and their licensors and licensees \n(collectively the “Content”). We do not grant you \nany right, license, title or interest to any of our \nintellectual Property rights which you may or \nmay not have access to. These Content may not \nbe copied, reverse engineered, decompiled, \ndisassembles, modified or reposted to other \nwebsites. Nothing on the our site should be construed \nas granting by implication or otherwise, any license \nor right to use any Trademark displayed on the Merstro \nwebsite without the written permission of Merstro \nor such third party that may own the Trademark. \nYou agree to take such actions including any legal or \nofficial document or other documents that may \nbe needed to further affirm our intellectual \nproperty rights.\n\nConfidential Information\nThe parties acknowledge that in the performance of their duties under this Agreement, either party may communicate to the other (or its designees) certain confidential and proprietary information, including without limitation information concerning each party’s services, know-how, technology, techniques, or business or marketing plans (collectively, the “Confidential Information”) all of which are confidential and proprietary to, and trade secrets of, the disclosing party. Confidential Information does not include information that: (i) is public knowledge at the time of disclosure by the disclosing party; (ii) becomes public knowledge or known to the receiving party after disclosure by the disclosing party other than by breach of the receiving party’s obligations under this section or by breach of a third party’s confidentiality obligations; (iii) was known by the receiving party prior to disclosure by the disclosing party other than by breach of a third party’s confidentiality obligations, or (iv) is independently developed by the receiving party.\nAs a condition to the receipt of the Confidential Information from the disclosing party, the receiving party shall: (i) not disclose in any manner, directly or indirectly, to any third party any portion of the disclosing party’s Confidential Information; (ii) not use the disclosing party’s Confidential Information in any fashion except to perform its duties under this Agreement or with the disclosing party’s express prior written consent; (iii) disclose the disclosing party’s Confidential Information, in whole or in part, only to employees and agents who need to have access thereto for the receiving party’s internal business purposes; (iv) take all necessary steps to ensure that its employees and agents are informed of and comply with the confidentiality restrictions contained in this Agreement; and (v) take all necessary precautions to protect the confidentiality of the Confidential Information received hereunder and exercise at least the same degree of care in safeguarding the Confidential Information as it would with its own confidential information, and in no event shall apply less than a reasonable standard of care to prevent disclosure.\nDisclaimers\nGREY WILL ALWAYS ENSURE THAT THE WEBSITE IS AVAILABLE AT ALL TIMES AND BUG-FREE. HOWEVER, IT IS USED AT YOUR OWN RISK.\n\nOUR WEBSITE AND SERVICES ARE PROVIDED “AS IS” WITHOUT ANY EXPRESS, IMPLIED AND/OR STATUTORY WARRANTIES (INCLUDING, BUT NOT LIMITED TO, ANY IMPLIED OR STATUTORY WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR USE OR PURPOSE, TITLE, AND NON-INFRINGEMENT OF INTELLECTUAL PROPERTY RIGHTS). WITHOUT LIMITING THE GENERALITY OF THE FOREGOING, GREY MAKES NO WARRANTY THAT OUR WEBSITE AND SERVICES WILL MEET YOUR REQUIREMENTS OR THAT OUR WEBSITE WILL BE UNINTERRUPTED, TIMELY, SECURE, OR ERROR-FREE. NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU THROUGH OUR WEBSITE OR FROM GREY, ITS PARENTS, SUBSIDIARIES, OR OTHER AFFILIATED COMPANIES, OR ITS OR THEIR SUPPLIERS (OR THE RESPECTIVE OFFICERS, DIRECTORS, EMPLOYEES, OR AGENTS OF ANY SUCH ENTITIES) (COLLECTIVELY, \"GREY PARTIES\") SHALL CREATE ANY WARRANTY.\n\nLimitation of Liability\nYOUR USE OF GREY’S SITE AND SERVICES IS AT YOUR OWN RISK. YOU AGREE TO THE LIMITATION LIABILITY CLAUSE TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW: GREY WILL IN NO WAY BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL PUNITIVE, CONSEQUENTIAL, SPECIAL OR EXEMPLARY DAMAGES OR ANY DAMAGES INCLUDING DAMAGES RESULTING FROM REVENUE LOSS, PROFIT LOSS, USE, DATA, GOODWILL, BUSINESS INTERRUPTION OR ANY OTHER INTANGIBLE LOSSES (WHETHER GREY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES OR NOT) ARISING OUT OF ABOKI AFRICA’S WEBSITE OR SERVICES (INCLUDING, WITHOUT LIMITATION TO INABILITY TO USE OR ARISING FROM THE RESULT OF USE OF GREY’S WEBSITE OR SERVICES) WHETHER SUCH DAMAGES ARE BASED ON WARRANTY, TORT, CONTRACT, STATUTE OR ANY OTHER LEGAL THEORY.\n\nSOME JURISDICTIONS DO NOT ALLOW EXCLUSION OF CERTAIN WARRANTIES OR LIMITATIONS ON THE SCOPE AND DURATION OF SUCH WARRANTIES, SO THE ABOVE DISCLAIMERS MAY NOT APPLY TO YOU IN THEIR ENTIRETIES, BUT WILL APPLY TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW.\n\nKnow Your Customer\nFor businesses, you agree that you are solely responsible for verifying your customers\' identities, ensuring that they are authorised to carry out the transactions on your platform, and determining their eligibility to purchase your products and services.\n\nYou are also required to maintain information and proof of service or product delivery to your customer. Where a dispute occurs needing resolution, you may be required to provide Grey with these.\n\nIndemnity\nYou hereby indemnify Grey and undertake to keep Grey, its staff and affiliates indemnified against any losses, damages, costs, liabilities and expenses (including without limitation reasonable legal fees and expenses) arising out of any breach by you of any provision of these Terms, or arising out of any claim that you have breached any provision of these Terms. You will indemnify and hold Grey harmless from and against any claim, suit or proceeding brought against Grey arising from or in connection with violations of Intellectual Property or other rights of third parties in relation to your use of the Services.\n\nTermination\nYou may terminate this Agreement by closing your Grey Account.\nWe may suspend your Grey Account and your access to Grey’s services and any funds, or terminate this Agreement, If;\nYou do not comply with or breach any of the provisions of this Agreement;\nWe are required to do so by law\nWe are directed by a Card Network or issuing financial institution; or\nWhere a suspicious or fraudulent transaction occurs\nGrey may take further actions it deems appropriate to deal with the breach, which may include, suspending your access to the website, prohibiting you from accessing the website, blocking computers using your IP address from accessing the website, contacting your internet service provider to request that they block your access to the website and/or bringing court proceedings against you.\nDispute Resolution\n- If a dispute of any kind whatsoever arises between the Parties in connection with or arising out of the execution of this Agreement, including but not limited to any dispute as to opinion, instruction, determination, assessment, estimate, valuation, certification or invoice submitted by a Party, or in connection with this Agreement construction, validity, interpretation, enforceability of this Agreement shall be finally settled pursuant to the dispute resolution process described in this clause.\n- The Parties shall use their best endeavours to settle any dispute or difference of opinion between them, arising from or in connection with this Agreement amicably through mutual discussion and negotiation pursuant to this clause.\n- If the Parties are unable to settle the dispute as indicated above within 15 (fifteen) Business Days, the dispute shall be referred to Mediation by the legal representative of either of the Parties. The parties will choose a mutually acceptable mediator.\n- The findings of the Mediator and subsequent award/Agreement shall be binding on both parties. Each Party shall bear its respective costs in connection with the Mediation.\n\nSeverablity\nThe invalidity, illegality or unenforceability of any of the provisions of this Agreement shall not affect the validity, legality and enforceability of the remaining provisions of this Agreement.\n\nAssignment\nYou hereby agree that we may assign, transfer, sub-contract or otherwise deal with our rights and/or obligations under these terms and conditions.\n\nWithout our prior written consent, you may not assign, transfer, sub-contract, or otherwise deal with any of your rights and/or obligations under these terms and conditions.\n\nUpdates, Modification & Adjustments\nGrey reserves the right to change, revise or modify these Terms from time to time by updating this page. The changes will not be retroactive, and the most current version of the Terms will always be on this page and will continue to govern our relationship with you. We will also try to notify you of any material changes which could be done via the email associated with your account or service notification. By continuing to use our services after the changes become effective, you agree to be bound by the revised Terms.\n\nData Protection\nWith respect to all the Personal Information belonging to, and/or processed in connection with Grey or this website, such Personal Information at all times comply with all Data Protection Laws in the territory, in all respect and in particular the General Data Protection Regulation and all applicable data protection regulation in force. Grey maintains a **Privacy Policy** which provides an overview of the Personal Information we collect about you or that you provide to us and how we store and use the information provided by you in line with applicable Data protection legislations. By using Grey’s Services, you consent to such processing and you commit to providing accurate information.\n\nGoverning Law\nGoverning Law The formation, existence, construction, performance, validity and all aspects whatsoever of this Terms of Service or of any term of this Agreement will be governed by the Laws of the United States of America. Contact Us If you have any questions, comments, or concerns with respect to your Personal Information or this Privacy Policy, you may contact us by: reaching out to the customer service support available on the website. sending an email to hello@grey.co Last Updated: February 2022\n\nContact Us\nIf you have any questions, comments, or concerns with respect to your Personal Information or this Privacy Policy, you may contact us by:\n\nreaching out to the customer service support available on the website.\nsending an email to hello@grey.co',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyText1,
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
