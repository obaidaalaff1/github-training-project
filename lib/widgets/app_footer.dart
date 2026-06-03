import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      color: AppColors.textDark,
      child: const Column(
        children: [
          Text(
            'عبيدة العف',
            style: TextStyle(color: Colors.black, fontSize: 12),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}