import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/addnewstory_item_model.dart';
import '../models/instagram_item_model.dart';
import '../models/instagram_profile_model.dart';

/// A provider class for the InstagramProfilePage.
///
/// This provider manages the state of the InstagramProfilePage, including the
/// current instagramProfileModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramProfileProvider extends ChangeNotifier {
  InstagramProfileModel instagramProfileModelObj = InstagramProfileModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in instagramProfileModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
