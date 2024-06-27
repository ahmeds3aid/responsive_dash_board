import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/models/item_details_model.dart';
import 'package:resonsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208BC7), title: 'Design Services', value: '%40'),
    ItemDetailsModel(
        color: Color(0xFF4DB7F2), title: 'Design Product', value: '%25'),
    ItemDetailsModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '%20'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return ItemDetails(itemDetailsModel: items[index]);
    });
  }
}

