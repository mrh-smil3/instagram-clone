import '../../../core/app_export.dart';

/// This class is used in the [commentnotifica_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommentnotificaItemModel {
  CommentnotificaItemModel(
      {this.userImage,
      this.replyImage,
      this.replyText,
      this.notificationIma,
      this.id}) {
    userImage = userImage ?? ImageConstant.imgOval44x44;
    replyImage = replyImage ?? ImageConstant.imgFavorite;
    replyText = replyText ?? "Reply";
    notificationIma = notificationIma ?? ImageConstant.imgRectangle44x44;
    id = id ?? "";
  }

  String? userImage;

  String? replyImage;

  String? replyText;

  String? notificationIma;

  String? id;
}
