import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

import 'widgets/conference_category.dart';

class ConferenceDetailsPage extends StatefulWidget {
  const ConferenceDetailsPage({super.key});
  @override
  State<ConferenceDetailsPage> createState() => _ConferenceDetailsPageState();
}

class _ConferenceDetailsPageState extends State<ConferenceDetailsPage>
    with SingleTickerProviderStateMixin {
  final List<String> data = [
    "Organizer",
    "Speakers",
    "Schedule",
    "Sponsors",
  ];

  late TabController tabController;

  // Instantiate scroll_to_index (套件提供的方法)
  late AutoScrollController autoScrollController;

  @override
  void initState() {
    tabController = TabController(length: data.length, vsync: this);
    autoScrollController = AutoScrollController();
    super.initState();
  }

  @override
  void dispose() {
    // tabController.dispose();
    autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: VerticalScrollableTabView(
        autoScrollController: autoScrollController,
        scrollbarThumbVisibility: false,
        tabController: tabController,
        listItemData: data,
        verticalScrollPosition: VerticalScrollPosition.begin,
        eachItemChild: (object, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConferenceCategoryTile(
            category: object.toString(),
            index: index,
          ),
        ),
        slivers: [
          SliverAppBar(
            pinned: true,
            // expandedHeight: 150.0,
            // leading: const Icon(Icons.arrow_back),
            elevation: 3,
            centerTitle: false,
            title: Text(
              "Conference info",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.kSecondaryTextColor,
              ),
            ),
            backgroundColor: AppColor.kBackgroundColor,
            iconTheme: const IconThemeData(color: Colors.black),
            // flexibleSpace: const FlexibleSpaceBar(
            //   title: Text("SliverAppBar"),
            //   centerTitle: false,
            //   titlePadding: EdgeInsets.only(bottom: 50),
            //   collapseMode: CollapseMode.pin,
            // ),
            bottom: TabBar(
              isScrollable: true,
              controller: tabController,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              indicatorColor: AppColor.kPrimaryColor,
              labelColor: AppColor.kPrimaryColor,
              unselectedLabelColor: AppColor.kGreyColor1,
              indicatorWeight: 3.0,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              tabs: data.map((category) {
                return Tab(text: category);
              }).toList(),
              onTap: (index) {
                VerticalScrollableTabBarStatus.setIndex(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}