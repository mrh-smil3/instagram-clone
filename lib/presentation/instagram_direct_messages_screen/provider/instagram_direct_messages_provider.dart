import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/instagram_direct_messages_model.dart';

/// A provider class for the InstagramDirectMessagesScreen.
///
/// This provider manages the state of the InstagramDirectMessagesScreen, including the
/// current instagramDirectMessagesModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramDirectMessagesProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  InstagramDirectMessagesModel instagramDirectMessagesModelObj =
      InstagramDirectMessagesModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
