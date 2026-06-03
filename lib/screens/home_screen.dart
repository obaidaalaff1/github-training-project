import 'package:flutter/material.dart';
import '../models/personal_info.dart';
import '../widgets/profile_header.dart';
import '../widgets/info_card.dart';
import '../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Portfolio'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(info: myInfo),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
            ),
            const SizedBox(height: 8),
            InfoCard(
              icon: Icons.school,
              title: 'University',
              value: myInfo.university,
            ),
            InfoCard(
              icon: Icons.email,
              title: 'Email',
              value: myInfo.email,
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Skills',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textDark,
                ),
              ),
            ),
            const SizedBox(height: 8),
            ...myInfo.skills.map(
                  (s) => InfoCard(icon: Icons.check_circle, title: 'Skill', value: s),),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}