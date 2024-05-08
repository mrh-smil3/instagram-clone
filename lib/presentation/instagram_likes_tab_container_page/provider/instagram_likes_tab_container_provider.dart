import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/instagram_likes_tab_container_model.dart';

/// A provider class for the InstagramLikesTabContainerPage.
///
/// This provider manages the state of the InstagramLikesTabContainerPage, including the
/// current instagramLikesTabContainerModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramLikesTabContainerProvider extends ChangeNotifier {
  InstagramLikesTabContainerModel instagramLikesTabContainerModelObj =
      InstagramLikesTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
