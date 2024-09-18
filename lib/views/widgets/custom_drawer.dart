import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/generated/assets.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView(),
          Expanded(
            child: SizedBox(),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Setting system',
              image: Assets.imagesSettings,
            ),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Logout account',
              image: Assets.imagesLogout,
            ),
          ),
          SizedBox(height: 48,),
        ],
      ),
    );
  }
}
