import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          SizedBox(height: 34,),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16,
            ),
          SizedBox(height: 8,),

          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          SizedBox(height: 16,),

          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),

        ],
      ),
    );
  }
}
