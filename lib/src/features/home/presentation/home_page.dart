import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';
import 'package:react_conf/src/features/home/cubit/navbar_cubit.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../conference/presentation/conference_page.dart';
import '../../sponsors/sponsor_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);

  static final List<Widget> _widgetOptions = <Widget>[
    const ConferencePage(),
    const SponsorPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.kBackgroundColor,
          appBar: const CustomAppbar(),
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
                label: 'Sponsors',
                icon: SvgPicture.asset(
                  ImageAssets.icSponsor,
                  color: state.isOdd ? AppColor.kPrimaryColor : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void changeTab(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500), 
      curve: Curves.easeInOut,
    );
  }
}
