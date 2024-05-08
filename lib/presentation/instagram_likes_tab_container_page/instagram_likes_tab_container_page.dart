import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../instagram_likes_page/instagram_likes_page.dart';
import 'models/instagram_likes_tab_container_model.dart';
import 'provider/instagram_likes_tab_container_provider.dart'; // ignore_for_file: must_be_immutable

class InstagramLikesTabContainerPage extends StatefulWidget {
  const InstagramLikesTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  InstagramLikesTabContainerPageState createState() =>
      InstagramLikesTabContainerPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InstagramLikesTabContainerProvider(),
      child: InstagramLikesTabContainerPage(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramLikesTabContainerPageState
    extends State<InstagramLikesTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 645.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      InstagramLikesPage.builder(context),
                      InstagramLikesPage.builder(context)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 44.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray500,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          )
        ],
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.4),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.onPrimaryContainer,
        tabs: [
          Tab(
            child: Text(
              "lbl_following".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_you".tr,
            ),
          )
        ],
      ),
    );
  }
}
