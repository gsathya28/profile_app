import 'package:flutter/material.dart';
import 'package:profile_app/pages/edit_name.dart';
import 'package:profile_app/pages/edit_phone.dart';
import 'package:profile_app/pages/edit_email.dart';
import 'package:profile_app/pages/edit_bio.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Not set';
  String phone = 'Not set';
  String email = 'Not set';
  String bio = 'Not set';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: ListView(
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(height: 60.0, color: Colors.grey[800]),
              ListTile(
                  title: const Text('Name'),
                  subtitle: Text(name),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditName(prevName: name),
                          ));

                      setState(() {
                        name = result;
                      });
                    },
                  )),
              const SizedBox(height: 10.0),
              ListTile(
                  title: const Text('Phone'),
                  subtitle: Text(phone),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPhone(prevPhone: phone),
                          ));

                      setState(() {
                        phone = result;
                      });
                    },
                  )),
              const SizedBox(height: 10.0),
              ListTile(
                  title: const Text('Email'),
                  subtitle: Text(email),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditEmail(prevEmail: email),
                          ));

                      setState(() {
                        email = result;
                      });
                    },
                  )),
              const SizedBox(height: 10.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text('Tell us about yourself',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  )),
                              const SizedBox(height: 5.0),
                              Text(bio),
                            ]),
                      ),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () async {
                              final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditBio(prevBio: bio),
                                  ));

                              setState(() {
                                bio = result;
                              });
                            },
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
