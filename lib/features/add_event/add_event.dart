import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';

import '../../core/resouces/resources.dart';

class AddEventView extends StatefulWidget {
  const AddEventView({super.key});

  @override
  State<AddEventView> createState() => _AddEventViewState();
}

class _AddEventViewState extends State<AddEventView> {
  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.screenHeight * 0.25,
            width: double.infinity,
            color: context.theme.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                Image.asset(
                  R.images.logo,
                  height: 100,
                  fit: BoxFit.cover,
                ),

                //

                const SizedBox(
                  height: 5,
                ),
                Text(
                  R.strings.welcome,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(R.strings.welcomeSubTitle, )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(key: formKey, child: const CustomTextFormField()),
          )
        ],
      ),
    );
  }
}
