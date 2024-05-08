import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/instagram_profile_container_model.dart';

/// A provider class for the InstagramProfileContainerScreen.
///
/// This provider manages the state of the InstagramProfileContainerScreen, including the
/// current instagramProfileContainerModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramProfileContainerProvider extends ChangeNotifier {
  InstagramProfileContainerModel instagramProfileContainerModelObj =
      InstagramProfileContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
