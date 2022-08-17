import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../profile/profile_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({Key key}) : super(key: key);

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
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
                        alignment: AlignmentDirectional(0.41, 0.69),
                        child: Text(
                          'Privacy Policy\n&\nAcceptable Use Policy',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: AutoSizeText(
                            'This privacy policy (this \"Privacy Policy\") explains \nhow personal information is collected, used, stored, \nand disclosed by Merstro. This Privacy Policy \napplies to our website and all related sites, \napplications, services and tools \nregardless of how you access or use them. \nThis Privacy Policy is part of our Terms of Use. \nBy accessing or using our Services, website, \nsoftware, services, applications, products \nand content offered via Merstro (collectively, \nthe “Services”), you agree to this Privacy Policy and \nour Terms of Use.\nThis Privacy Policy applies to your use of \n(regardless of means of access) our Services. \nYou may access or use our Services through \na desktop, laptop, mobile phone, tablet, or other \nconsumers electronic device (each, a \"Device\").\n\nThis Privacy Policy does not apply to services \nthat are not owned or controlled by Grey, including third-party websites and the services of other Grey merchants. These other sites may place their own cookies, plug-ins or other files on your computer, collect data or solicit personal information from you. Grey does not control these third-party websites and we are not responsible for their privacy statements. Please consult such third parties’ privacy statements.\n\n\nInformation We Collect\na. Information You Provide Us\na. Information You Provide Us To gain full access to our website and services, you must register for a Grey account. When you register for an account, we collect Personal Information which you voluntarily provide to us. Personal Information refers to information relating to an identified person or information that can be used to identify you, (e.g. email address, bank details, name, telephone number). It may also include anonymous information that may be linked to you specifically, (e.g. IP address).\n\nThe Personal Information we have about you is directly made available to us when you:\n\nSign up for a Grey Account;\nUse any of our services;\nContact us or our customer support team;\nFill our online forms;\nb. Personal Information We May Collect About You\nWe may collect, use, process, store, or transfer personal information such as:\n\n- Identity Data & Identification Documents: Information such as, your full name(s), your government-issued identity number, bank verification number (BVN) or NIN and your date of birth. Identification documents may include passport or any Government-issued identity card, a photograph (if applicable) and any other registration information you may provide to prove you are eligible to use our services. This data is to enable us to verify your identity in order to offer our services to you;\n\nContact Data: This is data that is needed to reach out to you, such as your contact address, email address, telephone number, details of the device you use and billing details;\nLog/Technical information: When you access Grey’s services, our servers automatically record information that your browser sends whenever you visit a website, links you have clicked on, length of visit on certain pages, unique device identifier, log-in information, location and other device details.\nFinancial Data: Information, such as personal account number, the merchant’s name and location, the date and the total amount of transaction, and other information provided by financial institutions or merchants when we act on their behalf;\nTransactional Data: These are information relating to payments when you as a merchant (using one or more of our payment processing services) or as a customer, are using our products or services;\nMarketing and Communications Data: This includes both a record of your decision to subscribe or to withdraw from receiving marketing materials from us or from our third parties.\nRecords of your discussions with us, if we contact you and if you contact us.\nHow We May Use Your Personal Information\nWe may use the Personal Information we collect to:\n\nCreate and manage any accounts you may have with us, verify your identity, provide our services, and respond to your inquiries;\nTo administer Grey(i.e. to provide our Services to you) and for internal operations, including troubleshooting, data analysis, testing, research, statistical and survey purposes (i.e. to guarantee Grey’s stability and security) and to solicit your feedback\nProcess your payment transactions (including authorization, clearing, chargebacks and other related dispute resolution activities);\nProtect against and prevent fraud, unauthorized transactions, claims and other liabilities;\nProvide, administer and communicate with you about products, services, offers, programs and promotions of Grey, financial institutions, merchants and partners;\nEvaluate and improve our business, including developing new products and services;\nAs necessary to establish, exercise and defend legal rights; As may be required by applicable laws and regulations, including for compliance with Know Your Customers and risk assessment, Anti-Money Laundering, anti-corruption and sanctions screening requirements, or as requested by any judicial process, law enforcement or governmental agency having or claiming jurisdiction over Aboki Africa or it’s affiliates;\nTo use data analytics to improve our Website, products or services, and user experiences.\nFor other purposes for which we provide specific notice at the time of collection.\nHow We Share Your Personal Data\nWe may disclose or share your Personal Information with third parties which include our affiliates, employees, officers, service providers, agents, suppliers, subcontractors as may be reasonably necessary for the purposes set out in this policy.\n\nGrey only shares personal information with External Third parties in the following limited circumstances:\n\nWe have your consent. We require opt-in consent for the sharing of any personal information; We share Personal Information with third parties directly authorized by you to receive Personal Information, such as when you authorize a third party application provider to access your account. The use of your Personal Information by an authorized third party is subject to the third party\'s privacy policy and Grey shall bear no liability for any breach which may arise from such authorization by you.\nWe provide such information to our subsidiaries, affiliated companies or other trusted businesses or persons for the purpose of processing personal information on our behalf. We require that these parties agree to process such information based on our instructions and in compliance with this Privacy Policy and any other appropriate confidentiality and security measures\nWe have a good faith belief that access, use, preservation or disclosure of such information is reasonably necessary to:\nsatisfy any applicable law, regulation, legal process or enforceable governmental request,\nenforce applicable Terms of Service, including investigation of potential violations thereof\ndetect, prevent, or otherwise address fraud, security or technical issues, or\nprotect against imminent harm to the rights, property or safety of Grey, its users or the public as required or permitted by law\nIf Grey becomes involved in a merger, acquisition, or any form of sale of some or all of its assets, we will provide notice before personal information is transferred and become subject to a different privacy policy.\nOther Rights to Your Personal Information with Us\nBelow are the rights you have as a user in relation to your Personal Information;\n\nRight to request access or copies to your Personal Information by contacting us\nRight to information on their personal information collected and stored;\nRight to objection or request for restriction; this means refrain us from doing certain things with your data or restrict the extent of our collection or processing of your data.\nRight to correct or rectify any Personal Information that you provide which may be incorrect, out of date or inaccurate.\nRight to object to the processing of your Personal Information for marketing purposes. You have a right to ask us not to contact you for marketing purposes by adjusting your notification preference on the settings page or by opting out via the unsubscribe link in marketing emails we send you.\nRight to request that Grey erase your Personal Information. You have the right to ask us to erase your Personal Information. Please note that this is a limited right which applies where the data is no longer required, or the processing has no legal justification. The exceptions to this right is where the applicable law requires us to retain a historical archive or where we retain a core set of your personal data to ensure we do not inadvertently contact you in future where you object to your data being used for marketing purposes.\nRight to object to decisions being taken by automated means which produce legal effects concerning you or similarly significantly affect you.\nRight to request the movement of data from Grey to a third party; this is the right to the portability of data;\nThe basis of we processing your Personal Information is your consent. You also have the choice at any time to withdraw consent which you have provided.\n\nYou may decline to provide your personal Information when it is requested by Grey, however, certain services or all the services may be unavailable to you. You may review your account settings and update your Personal Information directly or by contacting us.\n\nIf you wish to exercise any of the rights set above, please contact us using the contact information provided in the Contact Us segment below.\n\nSecurity and Storage of Your Personal Information\nWe have suitable security measures in place to prevent your Personal Information from being accidentally lost or used or accessed in an unauthorised way by a third party. When your bank account information is transmitted via our Services, it will be protected by encryption technology. In addition, we limit access to your personal data to those employees, agents, contractors and other third parties who have a business need to know. They will only process your Personal Information on our instructions. We have put in place procedures to deal with any suspected personal data breach and will notify you and any applicable regulator of a breach where we are legally required to do so.\n\nUnfortunately, no method of electronic transmission or storage via the Internet is 100% secure. Therefore, we cannot guarantee absolute security of your Personal Information. You also play a role in protecting your Personal Information. Please safeguard your password for your Grey account and do not share them with others. If we receive instructions using your Grey account login information, we will consider that you have authorized the instructions. You agree to notify us immediately of any unauthorized use of your Grey account or any other breach of security. We reserve the right, in our sole discretion, to refuse to provide our Services, terminate Grey accounts, and to remove or edit content.\n\nSubject to applicable law, which might, from time to time, oblige us to store your Personal Information for a certain period of time, we will retain your Personal Information for as long as necessary to fulfil the purposes we collected it for, including the purposes of satisfying any legal, accounting, or reporting requirements.\n\nCookies\nLike many other websites, we use cookies to distinguish you from other users and to customize and improve our services. Cookies allow our servers to remember IP addresses, date and time of visits, monitor web traffic and prevent fraudulent activities.\n\nOur cookies never store personal or sensitive information; they simply hold a unique random reference to you so that once you visit the site we can recognize who you are and provide certain content to you.\n\nIf your browser or browser add-on permits, you have the choice to disable cookies on our website, however this may impact your experience using our website. Unless you opt out of Cookies, we will assume you consent to the use of Cookies.\n\nAge Restriction\nOur Services are not directed, or intended to be attractive, to children under the age of 18. We do not knowingly collect Personal Information from children under the age of 18. If you are under the Age Limit, please do not use the Services, and do not provide any personal data to us.\n\nIf as a parent or guardian, you become aware that your child or ward child has provided us with any information without your consent, please contact us through the details provided in this Privacy Policy.\n\nOpt-Out Rights\nIf you do not wish to receive offers or other notices from us in the future, you can \"opt out\" by contacting us as indicated at the end of this Privacy Policy or by following the \"unsubscribe\" instructions in any communication you receive from us. Please be aware that if you are a User, you are not able to opt out of receiving communications about your Grey account or related transactions with us.\n\nChange to our Privacy Policy\nSubject to applicable law, we may change, amend or review this Privacy Policy at any time to reflect new services or changes in our Policy. All changes made will be posted on this page and where changes will materially affect you, we will notify you of this change by placing a notice online or via mail. If you keep using our Services, you consent to all amendments of this Privacy Policy.\n\nContact Us\nIf you have any questions, comments, or concerns with respect to your Personal Information or this Privacy Policy, you may contact us by:\n\nreaching out to the customer service support available on the website.\nsending an email to hello@grey.co\n\n\nAcceptable Use Policy\n\nGrey provides foreign virtual accounts to customers thus enables customers to receive and make payments subject to certain eligibility requirements which may depend on your occupation, country of residency or incorporation, applicable anti-money laundering regulations, Grey risk management policies or procedures and other factors used by us to determine such eligibility from time to time at our sole discretion.\n\nTo avoid fraud and money laundering activities we do not accept users with unknown sources of income or ambiguous lines of businesses/ occupations. Our users are encouraged to show reasons why they need a foreign virtual account. Grey reserves the right to refuse your virtual account application and Grey will only verify your application if on viewing your submitted documents and details we are satisfied that the nature of business being carried out by a user is such that he/she will be using a foreign virtual account for transactions.\n\nOur platform is to be used in:\nreceiving your salary or wages;\nreceiving payouts from e-commerce and freelancer platforms;\nreceiving payments from family, friends or other people you know for personal purposes;\nreceiving payments from your clients and other third parties for the purpose of business payments\n\nRestrictions on using our Platform\nTransacting on your own account\nAll activities under a Grey account shall be deemed as activities carried out by the registered user. You shall only use the services to transact on your own account and not on behalf of any other person or entity. You agree not to authorize any other person or entity to use your user name and password or mobile device to access the Services. You are solely responsible for the maintenance, confidentiality, and security of your username, password, and other User Information.\nGrey would not be responsible for any losses arising out of the loss or theft of your User Information or your mobile device or from unauthorized or fraudulent transactions associated with your Grey Virtual Account. If you suspect or become aware of any unauthorized activity or access to your username, password, or mobile device, you must contact us immediately to restrict or block your account.\n\nOne account per person or entity\nyou may only open one Grey account unless we have agreed in writing, the opening of additional accounts. Grey may refuse the creation of duplicate accounts for the same user. Where duplicate accounts are detected, Grey may close or merge these duplicate accounts at its sole discretion.\n\n1. Restricted activities\nYou may use our platform only for lawful purposes. You may not use our platform:\nin any way that breaches any applicable local, national, or international law or regulation, or causes Grey to breach any applicable law or regulation;\nin any way that is unlawful or fraudulent, or has any unlawful or fraudulent purpose or effect;\nfor the purpose of harming or attempting to harm minors in any way;\nfor anything that is abusive, harmful, or does not comply with our content standards;\nfor any unsolicited or unauthorised advertising, promotional material, or any other form of spam;\nto deal in harmful programs such as viruses, spyware, or similar computer code designed to adversely affect the operation of any computer software or hardware;\nNot to use your Grey virtual account in a manner that is likely to result in complaints, disputes, reversals, chargebacks, or other liabilities to Grey, other Customers, third parties, or you.\n\n2. Restricted line of businesses\nGrey does not service transactions relating to the following Restricted Lines of Business including but not limited to:\nIllegal Activities- Any criminal or illegal act that breaches any applicable local, national, or international law or regulation. – e.g. Illegal narcotics, child pornography, human trafficking, terrorist financing, stolen goods, illegal wildlife trade\nGambling\nCurrency exchange, including crypto-currencies and FX\nInvestment or “get rich quick” merchants, businesses or programs.\nCrowdfunding\nCounterfeiting and Copyright infringement\nReselling event tickets\nsale and purchase of firearms, firearm parts or accessories, ammunition, weapons or knives\nAdult entertainment and/or adult content websites\nAll Drugs and Pharma\nunlicensed financial services, stocks or other securities;\nItems or services that promote hate, violence, racial intolerance\nany product or service that is illegal or marketed or sold in such a way as to create liability to Grey.\n\nGrey may pre-approve the use of its Services in connection with some of the above, following review and examination of circumstances thereof, and subject to its sole discretion. Acts, products or services which constitute a breach of applicable laws or regulations will not be supported under any circumstances.',
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
