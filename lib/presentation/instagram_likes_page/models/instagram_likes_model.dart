import '../../../core/app_export.dart';
import 'commentnotifica_item_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InstagramLikesModel {
  List<CommentnotificaItemModel> commentnotificaItemList = [
    CommentnotificaItemModel(
        userImage: ImageConstant.imgOval44x44,
        replyImage: ImageConstant.imgFavorite,
        replyText: "Reply",
        notificationIma: ImageConstant.imgRectangle44x44),
    CommentnotificaItemModel(userImage: ImageConstant.imgOval1),
    CommentnotificaItemModel(userImage: ImageConstant.imgOval2)
  ];
}
