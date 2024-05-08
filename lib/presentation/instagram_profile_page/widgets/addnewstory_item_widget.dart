import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/addnewstory_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddnewstoryItemWidget extends StatelessWidget {
  AddnewstoryItemWidget(this.addnewstoryItemModelObj, {Key? key})
      : super(
          key: key,
        );

  AddnewstoryItemModel addnewstoryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(23.h),
            child: CustomImageView(
              imagePath: addnewstoryItemModelObj.icon!,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            addnewstoryItemModelObj.text!,
            style: theme.textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
