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

  TabController _tabController;
  var verifyTabs = <Tab>[
    Tab(text: 'Phone/Email'),
    Tab(text: 'Pan Card'),
    Tab(text: 'Bank Account'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: verifyTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final tabPages = <Widget> [
      VerifyPhoneEmail(),
      VerifyPanCard(),
      VerifyBankAccount()
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: AppColors.colorPrimary,
          child: ListView(
            children: [

              Container(
                child: MyCustomAppBar().getTransparentAppBarWithTitle(accountVerification, Icons.arrow_back_ios, () {
                  Navigator.of(context).pop();
                }),
              ),

              Container(
                height: MediaQuery.of(context).size.height-50,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                  child: Column(
                    children: [
                      Container(
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: AppColors.colorSecondary,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelColor: AppColors.colorSecondary,
                          unselectedLabelColor: AppColors.colorGreyDark,
                          tabs: verifyTabs,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: tabPages,
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),

      ),
    );
  }

}