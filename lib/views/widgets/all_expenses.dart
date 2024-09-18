import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/generated/assets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),

          AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'April 2022',
              price: r'$20,129',
            ),
          ),
        ],
      ),
    );
  }
}
