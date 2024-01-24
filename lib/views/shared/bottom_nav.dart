import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controllers/mainscreen_provider.dart';
import 'package:flutter_ecommerce/views/shared/bottom_nav_widget.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class BottoNavBar extends StatelessWidget {
  const BottoNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [BottomNavWidget(
              onTap: (){
                mainScreenNotifier.pageIndex=0;
              },
              icon: Ionicons.home, ),
              BottomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex=1;
                },
                icon: Ionicons.search,
              ),
               BottomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex=2;
                },
                icon: Ionicons.add,
                
              ),
               BottomNavWidget(
                onTap: () {
                    mainScreenNotifier.pageIndex=3;
                  
                },
                icon: Ionicons.cart,
              ),
               BottomNavWidget(
                onTap: () {  mainScreenNotifier.pageIndex=4;},
                icon: Ionicons.person,
              ),

           ],
          ),
        )
      ));;
      },
    );
  }
}

