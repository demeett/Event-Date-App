import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';

class AddEventView extends StatefulWidget {
  const AddEventView({super.key});

  @override
  State<AddEventView> createState() => _AddEventViewState();
}

class _AddEventViewState extends State<AddEventView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.screenHeight * 0.25,
            color: context.theme.primaryColor,
          ),
          const CustomTextFormField(),
        ],
      ),
    );
  }
}
