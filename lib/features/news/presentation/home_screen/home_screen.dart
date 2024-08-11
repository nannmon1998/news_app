import 'package:flutter/material.dart';
import 'package:news/config/theme/theme_data_extanded.dart';
import 'package:news/features/news/presentation/home_screen/components/main_category.dart';
import 'package:news/features/news/presentation/home_screen/components/main_image.dart';
import 'package:news/features/news/presentation/home_screen/components/most_read.dart';
import 'package:news/features/news/presentation/home_screen/components/sub_category.dart';
import 'package:news/features/news/presentation/home_screen/components/top_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appColors.backgroundDefault,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).appColors.snackbarValidation,
        selectedItemColor: Theme.of(context).appColors.snackbarError,
        unselectedItemColor: Theme.of(context).appColors.textDefault,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).appColors.snackbarError,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(18.0))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Icon(
                  Icons.home,
                  color: Theme.of(context).appColors.textDefault,
                )),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.edit_note_outlined),
            label: 'Note',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).appColors.snackbarError,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(18.0))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Icon(
                  Icons.edit_note_outlined,
                  color: Theme.of(context).appColors.textDefault,
                )),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).appColors.snackbarError,
                    borderRadius:
                        const BorderRadius.all(Radius.circular(18.0))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Icon(
                  Icons.person,
                  color: Theme.of(context).appColors.textDefault,
                )),
          ),
        ],
      ),
      body: ListView(
      physics: const ClampingScrollPhysics(),
        children:[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const TopBar(),
                SizedBox(
                  height: Theme.of(context).appDimensions.sizedBoxHelpIndication,
                ),
                const MainCategory(),
                SizedBox(
                  height: Theme.of(context).appDimensions.sizedBoxHelpIndication,
                ),
                const MainImage(),
                SizedBox(
                  height: Theme.of(context).appDimensions.sizedBoxHelpIndication,
                ),
                const SubCategory(),
                SizedBox(
                  height: Theme.of(context).appDimensions.sizedBoxHelpIndication,
                ),
                const MostRead(),
              ],
            ),
          ),
      ]
      ),
    );
  }
}
