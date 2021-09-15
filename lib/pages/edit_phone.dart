import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditPhone extends StatelessWidget {
  EditPhone({Key? key, required this.prevPhone}) : super(key: key);

  final phoneFieldController = TextEditingController();

  String prevPhone = "";
  String newPhone = "";

  @override
  Widget build(BuildContext context) {
    phoneFieldController.text = prevPhone;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Phone #'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Phone #', style: TextStyle(fontSize: 18)),
            const Divider(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: phoneFieldController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your phone #'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, phoneFieldController.text);
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
