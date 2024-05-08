import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'models/commentnotifica_item_model.dart';
import 'models/instagram_likes_model.dart';
import 'provider/instagram_likes_provider.dart';
import 'widgets/commentnotifica_item_widget.dart'; // ignore_for_file: must_be_immutable

class InstagramLikesPage extends StatefulWidget {
  const InstagramLikesPage({Key? key})
      : super(
          key: key,
        );

  @override
  InstagramLikesPageState createState() => InstagramLikesPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InstagramLikesProvider(),
      child: InstagramLikesPage(),
    );
  }
}

class InstagramLikesPageState extends State<InstagramLikesPage>
    with AutomaticKeepAliveClientMixin<InstagramLikesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_follow_requests".tr,
                        style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Column(
                      children: [
                        _buildFollowRequestsColumnNew(context),
                        _buildFollowRequestsColumnToday(context),
                        _buildFollowRequestsColumnThisWeek(context)
                      ],
                    ),
                    _buildFollowRequestsColumnThisMonth(context)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowRequestsColumnNew(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_new".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 15.v,
                    bottom: 12.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_karennne".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_liked_your_photo".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_1h".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowRequestsColumnToday(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_today".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfiles,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                Container(
                  width: 200.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_kiero_d_zackjohn2".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "lbl_and".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_26_others".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_liked_your_photo2".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_3h".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowRequestsColumnThisWeek(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_this_week".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 14.v),
          Consumer<InstagramLikesProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: provider
                    .instagramLikesModelObj.commentnotificaItemList.length,
                itemBuilder: (context, index) {
                  CommentnotificaItemModel model = provider
                      .instagramLikesModelObj.commentnotificaItemList[index];
                  return CommentnotificaItemWidget(
                    model,
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return CustomOutlinedButton(
      width: 90.h,
      text: "lbl_message".tr,
      margin: EdgeInsets.symmetric(vertical: 8.v),
    );
  }

  /// Section Widget
  Widget _buildFollow(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.only(
        left: 13.h,
        top: 8.v,
        bottom: 8.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFollow1(BuildContext context) {
    return CustomElevatedButton(
      width: 90.h,
      text: "lbl_follow".tr,
      margin: EdgeInsets.only(
        left: 13.h,
        top: 8.v,
        bottom: 8.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowRequestsColumnThisMonth(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_this_month".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillOnPrimary,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval4,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                Container(
                  width: 128.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 2.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_m_humphrey".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_started_following".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_3d".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 3.v,
                  ),
                  decoration: AppDecoration.outlinePrimary1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_message".tr,
                        style: CustomTextStyles.titleSmall14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillOnPrimary,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval5,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                Container(
                  width: 167.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_jammmie".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_started_following".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_3d".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                _buildMessage(context)
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillOnPrimary,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval6,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                Container(
                  width: 184.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_joshua_l".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_started_following".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_3d".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildFollow(context)
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillOnPrimary,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval7,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    22.h,
                  ),
                ),
                Container(
                  width: 184.h,
                  margin: EdgeInsets.only(
                    left: 12.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_parker_22".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_started_following".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_3d".tr,
                          style: theme.textTheme.bodyMedium,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                _buildFollow1(context)
              ],
            ),
          )
        ],
      ),
    );
  }
}
