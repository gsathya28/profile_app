import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditEmail extends StatelessWidget {
  EditEmail({Key? key, required this.prevEmail}) : super(key: key);

  final emailFieldController = TextEditingController();

  String prevEmail = "";
  String newEmail = "";

  @override
  Widget build(BuildContext context) {
    emailFieldController.text = prevEmail;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Email', style: TextStyle(fontSize: 18)),
            const Divider(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: emailFieldController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your email'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  // TODO: Add email validation code
                  Navigator.pop(context, emailFieldController.text);
                },
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                child: const Text('Save')),
            const SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
