import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/models/item_details_model.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyle.styleRegular12(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyle.styleRegular14(context),
      ),
    );
  }
}