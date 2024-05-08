import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/commentnotifica_item_model.dart';
import '../models/instagram_likes_model.dart';

/// A provider class for the InstagramLikesPage.
///
/// This provider manages the state of the InstagramLikesPage, including the
/// current instagramLikesModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramLikesProvider extends ChangeNotifier {
  InstagramLikesModel instagramLikesModelObj = InstagramLikesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
