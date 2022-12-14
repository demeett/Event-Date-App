import 'package:event_date_app/core/core.dart';
import 'package:event_date_app/core/viewmodel/common_view_model.dart';
import 'package:event_date_app/features/add_event/view/widgets/form_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/resouces/resources.dart';

class AddEventView extends StatefulWidget {
  const AddEventView({super.key});

  @override
  State<AddEventView> createState() => _AddEventViewState();
}

class _AddEventViewState extends State<AddEventView> {
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
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
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  R.strings.welcomeSubTitle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: FormTitle(
                        title: "E- mail:",
                      ),
                    ),
                    CustomTextFormField(
                      title: 'What do people call you?',
                      controller: emailController,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: FormTitle(title: "Full Name"),
                    ),
                    CustomTextFormField(
                      title: "What is your full name?",
                      controller: nameController,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FormTitle(title: "Date of Birth"),
                            ),
                            CustomTextFormField(title: "title", controller: birthController),
                          ],
                        )),
                        const SizedBox(
                          width: 2,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FormTitle(title: "Nationality "),
                            ),
                            CustomTextFormField(
                              title: "title",
                              controller: nationalityController,
                            )
                          ],
                        )),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: FormTitle(title: "Password"),
                    ),
                    CustomTextFormField(
                      title: "",
                      controller: passwordController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.instance.themeData.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )),
                              onPressed: () {
                                context.read<CommonViewModel>().addEventModel(
                                      EventModel(
                                        DateTime.now().millisecond.toString(),
                                        emailController.text,
                                        passwordController.text,
                                        nameController.text,
                                        DateTime.now(),
                                        nationalityController.text,
                                      ),
                                    );
                              },
                              child: const Text("Create Acount")),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
