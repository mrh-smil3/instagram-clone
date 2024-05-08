import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'models/instagram_direct_messages_model.dart';
import 'provider/instagram_direct_messages_provider.dart';

class InstagramDirectMessagesScreen extends StatefulWidget {
  const InstagramDirectMessagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InstagramDirectMessagesScreenState createState() =>
      InstagramDirectMessagesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InstagramDirectMessagesProvider(),
      child: InstagramDirectMessagesScreen(),
    );
  }
}

class InstagramDirectMessagesScreenState
    extends State<InstagramDirectMessagesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Column(
            children: [
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Selector<InstagramDirectMessagesProvider,
                    TextEditingController?>(
                  selector: (context, provider) => provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 3.v),
              _buildSearchRow(context),
              _buildKarennneRow(context),
              _buildMartiniroRow(context),
              _buildAndrewwwRow(context),
              _buildKierodRow(context),
              _buildMaxjacobsRow(context),
              _buildWeburlRow(context),
              _buildMhumphreyRow(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildStackovalRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 44.v,
      leadingWidth: 25.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 15.h,
          top: 12.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_jacob_w2".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowdown,
          margin: EdgeInsets.fromLTRB(5.h, 18.v, 12.h, 5.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlusOnprimarycontainer20x20,
          margin: EdgeInsets.only(
            left: 103.h,
            top: 11.v,
            right: 30.h,
          ),
        )
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOval10,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_joshua_l2".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                Text(
                  "msg_have_a_nice_day".tr,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 34.v,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_now".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.fromLTRB(23.h, 20.v, 3.h, 22.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKarennneRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval11,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_karennne2".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    Text(
                      "msg_i_heard_this_is".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_now".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 23.h,
              top: 16.v,
              bottom: 18.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMartiniroRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval12,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_martini_rond2".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_see_you_on_the_next".tr,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 29.v,
              bottom: 12.v,
            ),
            child: Text(
              "lbl_15m".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 16.v,
              bottom: 18.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAndrewwwRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOval13,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 16.v,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_andrewww".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                SizedBox(
                  width: 232.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_sounds_good".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "lbl2".tr,
                                style: CustomTextStyles.bodyMediumRoboto,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        "lbl_20m".tr,
                        style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 20.v,
              bottom: 22.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKierodRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOval14,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_kiero_d".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                Row(
                  children: [
                    Text(
                      "msg_the_new_design_looks".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_1m".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 20.v,
              bottom: 22.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMaxjacobsRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOval15,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 16.v,
                bottom: 16.v,
              ),
              child: _buildColumnmhumphrey(
                context,
                username: "lbl_maxjacobson2".tr,
                messageText: "lbl_thank_you_bro".tr,
                messageTime: "lbl_2h".tr,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              top: 20.v,
              right: 3.h,
              bottom: 22.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeburlRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgOval16,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_jamie_franco".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                ),
                Text(
                  "msg_yeap_i_m_going".tr,
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 33.v,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_4h".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              top: 20.v,
              right: 3.h,
              bottom: 22.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMhumphreyRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval17,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 12.v,
                bottom: 12.v,
              ),
              child: _buildColumnmhumphrey(
                context,
                username: "lbl_m_humphrey2".tr,
                messageText: "msg_instagram_ui_is".tr,
                messageTime: "lbl_5h".tr,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCamera,
            height: 22.v,
            width: 24.h,
            margin: EdgeInsets.only(
              top: 16.v,
              bottom: 18.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackovalRow(BuildContext context) {
    return SizedBox(
      height: 91.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 15.h,
                right: 15.h,
                bottom: 35.v,
              ),
              decoration: AppDecoration.fillOnPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgOval18,
                    height: 56.adaptSize,
                    width: 56.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 12.v,
                      bottom: 12.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_zackjohn".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                        ),
                        Text(
                          "msg_do_you_read_this".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 29.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_10h".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCamera,
                    height: 22.v,
                    width: 24.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      top: 16.v,
                      bottom: 18.v,
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            height: 79.v,
            width: double.maxFinite,
            text: "lbl_camera".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgIcon,
                height: 20.v,
                width: 21.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.outlineGray,
            buttonTextStyle: CustomTextStyles.bodyMediumBlue400,
            alignment: Alignment.bottomCenter,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildColumnmhumphrey(
    BuildContext context, {
    required String username,
    required String messageText,
    required String messageTime,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: CustomTextStyles.bodyMediumOnPrimaryContainer_2.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        Row(
          children: [
            Text(
              messageText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.black900.withOpacity(0.4),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.h),
              child: Text(
                messageTime,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.black900.withOpacity(0.4),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
