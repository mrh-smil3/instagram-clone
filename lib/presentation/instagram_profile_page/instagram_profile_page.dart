import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_title_dropdown.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'models/addnewstory_item_model.dart';
import 'models/instagram_item_model.dart';
import 'models/instagram_profile_model.dart';
import 'provider/instagram_profile_provider.dart';
import 'widgets/addnewstory_item_widget.dart';
import 'widgets/instagram_item_widget.dart'; // ignore_for_file: must_be_immutable

class InstagramProfilePage extends StatefulWidget {
  const InstagramProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  InstagramProfilePageState createState() => InstagramProfilePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InstagramProfileProvider(),
      child: InstagramProfilePage(),
    );
  }
}

class InstagramProfilePageState extends State<InstagramProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildRecentOrders(context),
                SizedBox(height: 15.v),
                CustomImageView(
                  imagePath: ImageConstant.imgTabs,
                  height: 44.v,
                  width: 375.h,
                ),
                SizedBox(height: 1.v),
                _buildInstagram(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Selector<InstagramProfileProvider, InstagramProfileModel?>(
        selector: (context, provider) => provider.instagramProfileModelObj,
        builder: (context, instagramProfileModelObj, child) {
          return AppbarTitleDropdown(
            hintText: "lbl_jacob_w2".tr,
            items: instagramProfileModelObj?.dropdownItemList ?? [],
            onTap: (value) {
              context.read<InstagramProfileProvider>().onSelected(value);
            },
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(18.h, 10.v, 18.h, 12.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 11.h,
        right: 16.h,
      ),
      decoration: AppDecoration.outlinePrimary2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 96.adaptSize,
                  width: 96.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgOval86x86,
                        height: 86.adaptSize,
                        width: 86.adaptSize,
                        radius: BorderRadius.circular(
                          43.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 96.adaptSize,
                          width: 96.adaptSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              48.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.primaryContainer,
                              width: 1.h,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 205.h,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    top: 30.v,
                    bottom: 30.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "lbl_54".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "lbl_posts".tr,
                            style:
                                CustomTextStyles.bodyMediumOnPrimaryContainer_2,
                          )
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        child: _buildUserProfile(
                          context,
                          userImage: "lbl_834".tr,
                          followingText: "lbl_followers".tr,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: _buildUserProfile(
                            context,
                            userImage: "lbl_162".tr,
                            followingText: "lbl_following".tr,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "lbl_jacob_west".tr,
              style: CustomTextStyles.labelLarge12,
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            width: 193.h,
            margin: EdgeInsets.only(left: 5.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_digital_goodies2".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "lbl_pixsellz".tr,
                    style: CustomTextStyles.bodySmallOnError,
                  ),
                  TextSpan(
                    text: "msg_everything_is_designed".tr,
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: "lbl_edit_profile".tr,
            margin: EdgeInsets.only(left: 5.h),
            buttonTextStyle: theme.textTheme.labelLarge!,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 83.v,
            child: Consumer<InstagramProfileProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 35.h,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 18.h,
                    );
                  },
                  itemCount: provider
                      .instagramProfileModelObj.addnewstoryItemList.length,
                  itemBuilder: (context, index) {
                    AddnewstoryItemModel model = provider
                        .instagramProfileModelObj.addnewstoryItemList[index];
                    return AddnewstoryItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInstagram(BuildContext context) {
    return Consumer<InstagramProfileProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 125.v,
            crossAxisCount: 3,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.instagramProfileModelObj.instagramItemList.length,
          itemBuilder: (context, index) {
            InstagramItemModel model =
                provider.instagramProfileModelObj.instagramItemList[index];
            return InstagramItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Common widget
  Widget _buildUserProfile(
    BuildContext context, {
    required String userImage,
    required String followingText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12.h),
          child: Text(
            userImage,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        SizedBox(height: 1.v),
        Text(
          followingText,
          style: CustomTextStyles.bodyMediumOnPrimaryContainer_2.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        )
      ],
    );
  }
}
