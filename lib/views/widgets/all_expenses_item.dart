import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild: ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState: isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300), // Adjust duration as needed
      layoutBuilder: (topChild, topKey, bottomChild, bottomKey) {
        return Stack(
          children: <Widget>[
            Positioned(key: bottomKey, child: bottomChild),
            Positioned(key: topKey, child: topChild),
          ],
        );
      },
    );
  }
}