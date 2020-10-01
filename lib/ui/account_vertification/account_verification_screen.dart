import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/ui/account_vertification/veify_bank_account.dart';
import 'package:fantasy_app/ui/account_vertification/verify_pan_card.dart';
import 'package:fantasy_app/ui/account_vertification/verify_phone_email.dart';
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
                  Container(
                    height: 50,
                    color: AppColors.colorPrimary,
                    child: Center(
                      child: Stack(
//                    mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Container(
                            height: 50,
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Icon(Icons.close, color: Colors.white,),
                              ],
                            ),
                          ),

                          Container(
                              child: Center(
                                child: Text(accountVerification,
                                  style: TextStyle(fontSize: 20, color: AppColors.colorWhite),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
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


  Widget _getTabPage(Tab tab){
    switch(tab.text){
      case 'Phone/Email': return VerifyPhoneEmail();
      case 'Pan Card': return VerifyPanCard();
      case 'Bank Account': return VerifyBankAccount();
    }
  }

}