import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:bird_shop/src/widgets/form/form_header_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPhone extends StatelessWidget {
  const ForgotPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: tDefaultSize * 4,
                ),
                const FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tForgetPassword,
                  subtitle: tForgetPasswordSubTitle,
                  textAlign: TextAlign.center,
                  heightBetween: 30.0,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                const SizedBox(
                  height: tFormHeight,
                ),
                Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(tPhoneNo),
                            hintText: tPhoneNo,
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                        const SizedBox(
                          height: tFormHeight,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const  Text(tNext),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
