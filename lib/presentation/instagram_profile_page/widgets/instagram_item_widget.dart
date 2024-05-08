import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/instagram_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramItemWidget extends StatelessWidget {
  InstagramItemWidget(this.instagramItemModelObj, {Key? key})
      : super(
          key: key,
        );

  InstagramItemModel instagramItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: instagramItemModelObj.image!,
      height: 124.adaptSize,
      width: 124.adaptSize,
    );
  }
}
