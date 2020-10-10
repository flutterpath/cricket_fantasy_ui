import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/ui/account_verification/verify_bank_account.dart';
import 'package:fantasy_app/ui/account_verification/verify_pan_card.dart';
import 'package:fantasy_app/ui/account_verification/verify_phone_email.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AccountVerificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AccountVerificationState();
}

class AccountVerificationState extends State<AccountVerificationScreen> with TickerProviderStateMixin {

  var verifyTabs = <Tab>[
    Tab(text: 'Phone/Email'),
    Tab(text: 'Pan Card'),
    Tab(text: 'Bank Account'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final tabPages = <Widget> [
      VerifyPhoneEmail(),
      VerifyPanCard(),
      VerifyBankAccount()
    ];

    return SafeArea(
      child: DefaultTabController(
        length: verifyTabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Container(
              color: AppColors.colorGreyExtraLight,
              child: Column(
                children: [

                  MyCustomAppBar().getAppBarWithTitle(accountVerification, Icons.arrow_back_ios),

                  Container(
                    color: AppColors.colorWhite,
                    child: TabBar(
                      indicatorColor: AppColors.colorPrimary,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: AppColors.colorPrimary,
                      tabs: verifyTabs,
                    ),
                  )

                ],
              ),
            ),
          ),

          body: TabBarView(
            children: tabPages,
          ),

        ),
      ),
    );
  }

}