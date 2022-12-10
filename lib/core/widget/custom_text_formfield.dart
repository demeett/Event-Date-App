import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.grey[300],
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide.none),
        hintText: 'What do people call you?',
        labelText: 'Name *',
      ),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      validator: (String? value) {
        return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
      },
    );
  }
}
