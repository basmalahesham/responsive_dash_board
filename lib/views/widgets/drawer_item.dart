import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
      secondChild: ActiveDrawerItem(drawerItemModel: drawerItemModel),
      crossFadeState: isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
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