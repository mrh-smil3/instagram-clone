import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/commentnotifica_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommentnotificaItemWidget extends StatelessWidget {
  CommentnotificaItemWidget(this.commentnotificaItemModelObj, {Key? key})
      : super(
          key: key,
        );

  CommentnotificaItemModel commentnotificaItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: commentnotificaItemModelObj.userImage!,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 181.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_craig_love".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "msg_mentioned_you_in".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        ),
                        TextSpan(
                          text: "lbl_jacob_w".tr,
                          style: CustomTextStyles.bodyMediumOnError,
                        ),
                        TextSpan(
                          text: "lbl_exactly".tr,
                          style:
                              CustomTextStyles.bodyMediumOnPrimaryContainer_1,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles
                            .bodyMediumRobotoOnPrimaryContainer_1,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_2d2".tr,
                        style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 15.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: commentnotificaItemModelObj.replyImage!,
                      height: 10.v,
                      width: 12.h,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        commentnotificaItemModelObj.replyText!,
                        style: theme.textTheme.labelMedium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: commentnotificaItemModelObj.notificationIma!,
            height: 44.adaptSize,
            width: 44.adaptSize,
            margin: EdgeInsets.only(bottom: 31.v),
          )
        ],
      ),
    );
  }
}
