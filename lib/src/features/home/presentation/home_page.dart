import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';
import 'package:react_conf/src/features/home/cubit/navbar_cubit.dart';

import '../../conference/presentation/conference_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);

  static final List<Widget> _widgetOptions = <Widget>[
    const ConferencePage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavbarCubit(),
      child: BlocBuilder<NavbarCubit, int>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColor.kBackgroundColor,
            appBar: AppBar(
              backgroundColor: AppColor.kBackgroundColor,
              elevation: 3,
              toolbarHeight: 64.h,
              shadowColor: AppColor.kBackgroundColor.withOpacity(0.3),
              title: Image.asset(
                ImageAssets.icAppLogo,
                height: 48.h,
                width: 103.w,
              ),
            ),
            body: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: _widgetOptions,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state,
              onTap: (index) {
                context.read<NavbarCubit>().onItemTapped(index);
                changeTab(index);
              },
              backgroundColor: AppColor.kBackgroundColor,
              selectedItemColor: AppColor.kPrimaryColor,
              unselectedItemColor: AppColor.kGreyColor2,
              items: [
                BottomNavigationBarItem(
                  label: 'Conference',
                  icon: SvgPicture.asset(
                    ImageAssets.icConference,
                    color: state.isEven ? AppColor.kPrimaryColor : null,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: SvgPicture.asset(
                    ImageAssets.icSponsor,
                    color: state.isOdd ? AppColor.kPrimaryColor : null,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void changeTab(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500), curve: Curves.easeInOut,
    );
  }
}
