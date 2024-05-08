import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'addnewstory_item_model.dart';
import 'instagram_item_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramProfileModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<AddnewstoryItemModel> addnewstoryItemList = [
    AddnewstoryItemModel(
        icon: ImageConstant.imgPlusOnprimarycontainer, text: "New"),
    AddnewstoryItemModel(text: "Friends"),
    AddnewstoryItemModel(text: "Sport "),
    AddnewstoryItemModel(text: "Design")
  ];

  List<InstagramItemModel> instagramItemList = [
    InstagramItemModel(image: ImageConstant.imgRectangle),
    InstagramItemModel(image: ImageConstant.imgRectangle124x124),
    InstagramItemModel(image: ImageConstant.imgRectangle124x125),
    InstagramItemModel(image: ImageConstant.imgRectangle1),
    InstagramItemModel(image: ImageConstant.imgRectangle3),
    InstagramItemModel(image: ImageConstant.imgRectangle4),
    InstagramItemModel(image: ImageConstant.imgRectangle5),
    InstagramItemModel(image: ImageConstant.imgRectangle6)
  ];
}
