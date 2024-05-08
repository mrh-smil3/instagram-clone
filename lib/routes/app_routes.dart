import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/instagram_direct_messages_screen/instagram_direct_messages_screen.dart';
import '../presentation/instagram_profile_container_screen/instagram_profile_container_screen.dart';

class AppRoutes {
  static const String instagramLikesPage = '/instagram_likes_page';

  static const String instagramLikesTabContainerPage =
      '/instagram_likes_tab_container_page';

  static const String instagramProfileContainerScreen =
      '/instagram_profile_container_screen';

  static const String instagramProfilePage = '/instagram_profile_page';

  static const String instagramDirectMessagesScreen =
      '/instagram_direct_messages_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        instagramProfileContainerScreen:
            InstagramProfileContainerScreen.builder,
        instagramDirectMessagesScreen: InstagramDirectMessagesScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: InstagramProfileContainerScreen.builder
      };
}
