import '../../../core/app_export.dart';

/// This class is used in the [instagram_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramItemModel {
  InstagramItemModel({this.image, this.id}) {
    image = image ?? ImageConstant.imgRectangle;
    id = id ?? "";
  }

  String? image;

  String? id;
}
