import '../../../core/app_export.dart';

/// This class is used in the [addnewstory_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddnewstoryItemModel {
  AddnewstoryItemModel({this.icon, this.text, this.id}) {
    icon = icon ?? ImageConstant.imgPlusOnprimarycontainer;
    text = text ?? "New";
    id = id ?? "";
  }

  String? icon;

  String? text;

  String? id;
}
