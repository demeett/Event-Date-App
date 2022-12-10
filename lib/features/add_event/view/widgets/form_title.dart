import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;
  const FormTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.theme.textTheme.bodyText1,
    );
  }
}
