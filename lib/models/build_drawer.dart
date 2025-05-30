import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff645EFF),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff645EFF)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    color: Color(0xffE9ECFC),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
          _buildDrawerItem(
            icon: PhosphorIconsRegular.house,
            title: 'HOME',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: PhosphorIconsRegular.house,
            title: 'HOME',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: PhosphorIconsRegular.image,
            title: 'PHOTO1',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: PhosphorIconsRegular.gear,
            title: 'SETTINGS',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

Widget _buildDrawerItem({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
}) {
  return ListTile(
    leading: Icon(icon, color: const Color(0xffE9ECFC), size: 24),
    title: Text(
      title,
      style: const TextStyle(color: Color(0xffE9ECFC), fontSize: 16),
    ),
    onTap: onTap,
  );
}
