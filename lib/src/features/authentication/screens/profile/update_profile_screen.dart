
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../constants/text.dart';

class UpdateProfileScreen extends StatelessWidget{
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_left),
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
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
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Form(child: Column(
                children: [
                TextFormField(
                decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_2_outlined),
                ),
              ),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tEmail),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tPhoneNo),
                    prefixIcon: Icon(Icons.phone),
                    // prefixText: '+91 ',
                  ),
                ),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tPassword),
                    prefixIcon: Icon(Icons.fingerprint_outlined),
                  ),
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                  SizedBox(
                    width: double.infinity,
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
                  height: tFormHeight,
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [

                      const Text.rich(
                        TextSpan(
                          text: tJoined,
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan( text: tJoinedAt , style:  TextStyle(fontWeight: FontWeight.bold , fontSize: 12))
                          ]
                        )
                      ),
                      ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const  StadiumBorder(),
                            side: BorderSide.none
                          ),
                          child: const Text(tDelete))
                    ],
                  )

                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}