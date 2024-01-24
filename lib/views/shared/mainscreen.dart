import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controllers/mainscreen_provider.dart';
import 'package:flutter_ecommerce/views/shared/appstyle.dart';
import 'package:flutter_ecommerce/views/shared/bottom_nav.dart';
import 'package:flutter_ecommerce/views/ui/cartpage.dart';
import 'package:flutter_ecommerce/views/ui/homepage.dart';
import 'package:flutter_ecommerce/views/ui/profile.dart';
import 'package:flutter_ecommerce/views/ui/searchpage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_widget.dart';
class MainScreen extends StatelessWidget {
   MainScreen({super.key});
  List<Widget>pageList=const[
  HomePage(),
  SearchPage(),
  HomePage(),
  CartPage(),
  ProfilePage()

  ];

  @override
  Widget build(BuildContext context) {
  
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar:const BottoNavBar(),
        ) ;
      },
    );
  }
}

