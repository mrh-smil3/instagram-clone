import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../instagram_likes_tab_container_page/instagram_likes_tab_container_page.dart';
import '../instagram_profile_page/instagram_profile_page.dart';
import 'models/instagram_profile_container_model.dart';
import 'provider/instagram_profile_container_provider.dart';

class InstagramProfileContainerScreen extends StatefulWidget {
  const InstagramProfileContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InstagramProfileContainerScreenState createState() =>
      InstagramProfileContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InstagramProfileContainerProvider(),
      child: InstagramProfileContainerScreen(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramProfileContainerScreenState
    extends State<InstagramProfileContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.instagramDirectMessagesScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.instagramProfilePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.instagramProfilePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Plus:
        return "/";
      case BottomBarEnum.Favoriteonprimarycontainer21x24:
        return "/";
      case BottomBarEnum.Close:
        return AppRoutes.instagramLikesTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.instagramProfilePage:
        return InstagramProfilePage.builder(context);
      case AppRoutes.instagramLikesTabContainerPage:
        return InstagramLikesTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
