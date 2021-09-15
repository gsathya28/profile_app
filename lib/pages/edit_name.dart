import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditName extends StatelessWidget {
  EditName({Key? key, required this.prevName}) : super(key: key);

  final nameFieldController = TextEditingController();

  String prevName = "";
  String newName = "New Name!";

  @override
  Widget build(BuildContext context) {
    nameFieldController.text = prevName;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Name', style: TextStyle(fontSize: 18)),
            const Divider(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: nameFieldController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your name'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, nameFieldController.text);
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
