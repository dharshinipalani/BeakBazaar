import 'package:bird_shop/src/constants/images.dart';
import 'package:bird_shop/src/constants/sizes.dart';
import 'package:bird_shop/src/constants/text.dart';
import 'package:flutter/material.dart';

import 'widget/login_footer_widget.dart';
import 'widget/login_form_widget.dart';
import 'widget/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                FormFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


