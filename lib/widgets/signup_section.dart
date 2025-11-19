import 'package:flutter/material.dart';
import 'package:yoru_phonics/widgets/custom_textfield.dart';
import 'package:yoru_phonics/widgets/password_textfield.dart';

class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to W phonics!",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 16,
            children: [
              CustomTextField(label: "Email"),
              PasswordTextfield(),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: AgreementWidget(),
        ),

        
      ],
    );
  }
}

class AgreementWidget extends StatelessWidget {
  const AgreementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
              checkColor: Colors.white,
              activeColor: Colors.white,
              focusColor: Colors.white,
            ),
            Text("SELECT ALL"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.white,
                    focusColor: Colors.white,
                  ),
                  Expanded(
                    child: Text("I agree to the privacy policy and terms"),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.white,
                    focusColor: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      "I want to recieve email updates from jolly phonics",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
