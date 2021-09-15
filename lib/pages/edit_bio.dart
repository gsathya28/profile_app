import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditBio extends StatelessWidget {
  EditBio({Key? key, required this.prevBio}) : super(key: key);

  final bioFieldController = TextEditingController();

  String prevBio = "";
  String newBio = "";

  @override
  Widget build(BuildContext context) {
    bioFieldController.text = prevBio;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Bio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Tell us about yourself',
                style: TextStyle(fontSize: 18)),
            const Divider(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: bioFieldController,
                keyboardType: TextInputType.multiline,
                maxLength: 200,
                maxLines: 6,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter your bio'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context, bioFieldController.text);
                },
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}
