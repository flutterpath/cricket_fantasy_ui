import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/ui/dashboard/match_list_builder.dart';
import 'package:flutter/material.dart';

class MyMatchesScreen extends StatefulWidget {
  @override
  _MyMatchesScreenState createState() => _MyMatchesScreenState();
}

class _MyMatchesScreenState extends State<MyMatchesScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int activeTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 45,
                  child: TabBar(
                      labelColor: AppColors.colorSecondary,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: AppColors.colorSecondary,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          child: Text(
                            "Fixtures",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Live",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Results",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ]),
                ),
                Expanded(
                  child: TabBarView(controller: _tabController, children: [
                    MatchListBuilderScreen(),
                    MatchListBuilderScreen(),
                    MatchListBuilderScreen(),
                  ]),
                ),
              ],
            )
        )
    );
  }
}
