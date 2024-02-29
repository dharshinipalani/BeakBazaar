import 'package:flutter/material.dart';

import '../../../../../constants/images.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text.dart';

class FormFooterWidget extends StatelessWidget {
  const FormFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image.asset(tGoogleLogoImage ,width: 20),
              onPressed: () {},
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(height: tFormHeight - 20,),
        TextButton(onPressed: (){}, child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyMedium,
                children: const [
                  TextSpan(
                      text: tSignup,
                      style: TextStyle(color: Colors.blue)
                  )
                ]
            )
        ),),
      ],
    );
  }
}