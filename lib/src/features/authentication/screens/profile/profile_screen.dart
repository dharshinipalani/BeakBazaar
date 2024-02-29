import 'package:bird_shop/src/constants/colors.dart';
import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/features/authentication/screens/profile/update_profile_screen.dart';
import 'package:bird_shop/src/features/authentication/screens/profile/widget/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_left),
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? Icons.sunny : Icons.shield_moon_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage(tSplashImage),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.headlineSmall),
              Text(tProfileSubHeading,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: 'Settings',
                icon: Icons.settings,
                onPressed: () {},
              ),
              ProfileMenuWidget(
                title: 'Billing Details',
                icon: Icons.wallet,
                onPressed: () {},
              ),
              ProfileMenuWidget(
                title: 'User Management',
                icon: Icons.verified_user,
                onPressed: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: 'Information',
                icon: Icons.info,
                onPressed: () {},
              ),
              ProfileMenuWidget(
                title: 'Logout',
                icon: Icons.logout,
                textColor: Colors.red,
                endIcon: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

