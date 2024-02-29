import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";

import "../../../../repository/auth_repository/authentication_repository.dart";
import "../../controllers/mail_verify_controller.dart";

class MailVerification extends StatelessWidget {
  const MailVerification({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MailVerificationController());
    return Scaffold(
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(
        top: tDefaultSpace 5, left: tDefaultSpace, right: tDefaultSpace, bottom: tDefaultSpace 2), // EdgeInsets.only
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    const Icon(Icons.email_outlined, size: 100),
    const SizedBox(height: tDefaultSpace * 2),
    Text(tEmailVerificationTitle.tr, style: Theme.of(context).textTheme.headlineMedium),
    const SizedBox(height: tDefaultSpace),
    Text(
    tEmailVerificationSubTitle.tr,
    style: Theme.of(context).textTheme.bodyMedium,
    textAlign: TextAlign.center,
    ), // Text
    const SizedBox(height: tDefaultSpace * 2),
    SizedBox(
    width: 200,
    child: OutlinedButton(child: Text(tContinue.tr), onPressed: () => controller.manuallyCheckEmailVerificationStatus()),
    ), // SizedBox
    const SizedBox(height: tDefaultSpace 2),
    TextButton(
    onPressed: () => controller.sendVerificationEmail(),
    child: Text(tResendEmailLink.tr),
    ), // TextButton
    TextButton (
    onPressed: () => AuthenticationRepository.instance.logout(),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,

class MailVerificationController {
}