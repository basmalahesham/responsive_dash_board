import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
       contentPadding: EdgeInsets.zero,
       horizontalTitleGap: 0,
       minVerticalPadding: 0,
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        // maxLines: 1,
        // overflow: TextOverflow.ellipsis,
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
