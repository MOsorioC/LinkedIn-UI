import 'package:flutter/material.dart';
import 'package:likedin_ui/core/constants/color_palette.dart';
import 'package:likedin_ui/core/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarView extends StatelessWidget {
  final bottomNavigationList = [
    ['Home', Icons.home],
    ['My network', Icons.people],
    ['Post', Icons.add_box_rounded],
    ['Notifications', Icons.notifications],
    ['Jobs', Icons.shopping_bag]
  ];

  @override
  Widget build(BuildContext context) {
    var homeViewModel = Provider.of<HomeViewModel>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int index = 0; index < bottomNavigationList.length; index++)
            InkWell(
              onTap: () {
                homeViewModel.onItemTapped(index);
              },
              child: Column(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width / 5) - 12,
                    height: 2,
                    margin: EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                      color: homeViewModel.pageIndex == index
                          ? Colors.black
                          : Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Icon(
                    bottomNavigationList[index][1],
                    size: 25,
                    color: homeViewModel.pageIndex == index
                        ? Colors.black
                        : ColorPalette.subTitleColor,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    bottomNavigationList[index][0],
                    style: TextStyle(
                      color: homeViewModel.pageIndex == index
                          ? Colors.black
                          : ColorPalette.subTitleColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
