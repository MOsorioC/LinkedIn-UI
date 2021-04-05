import 'package:flutter/material.dart';
import 'package:likedin_ui/core/constants/color_palette.dart';

class HeaderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        padding:
        EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.jpg"),
            ),

            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 40.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorPalette.primaryColor.withOpacity(0.03),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: ColorPalette.subTitleColor,
                      ),
                      Text("search", style: TextStyle(
                        color: ColorPalette.subTitleColor
                      ),)
                    ],
                  ),
                  Icon(Icons.qr_code_sharp, color: ColorPalette.subTitleColor,)
                ],
              ),
            ),
            Icon(Icons.message, color: ColorPalette.subTitleColor,)
          ],
        ),
      ),
    );
  }

}