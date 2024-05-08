import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../custom_drop_down.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarTitleDropdown extends StatelessWidget {
  AppbarTitleDropdown(
      {Key? key,
      required this.hintText,
      required this.items,
      required this.onTap,
      this.margin})
      : super(
          key: key,
        );

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 90.h,
        icon: SizedBox(
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdown,
            height: 7.v,
            width: 11.h,
          ),
        ),
        hintText: "lbl_jacob_w2".tr,
        items: items,
        prefix: Container(
          margin: EdgeInsets.only(right: 5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 12.v,
            width: 9.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 20.v,
        ),
      ),
    );
  }
}
