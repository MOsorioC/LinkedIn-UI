import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:likedin_ui/core/constants/color_palette.dart';
import 'package:likedin_ui/core/utils/utils.dart';
import 'package:likedin_ui/provider_resources.dart';
import 'package:likedin_ui/ui/widgets/bottom_navigation_bar.dart';
import 'package:likedin_ui/ui/widgets/header_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Linked In',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.white,
          accentColor: ColorPalette.titleColor,
          brightness: Brightness.dark,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.darkSystemUiOverlayStyle(),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.grey.withOpacity(0.1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HeaderView(),
                  ],
                ),
              ),
            ),
            Positioned(bottom: 0, child: BottomNavigationBarView())
          ],
        ),
      ),
    ));
  }
}
