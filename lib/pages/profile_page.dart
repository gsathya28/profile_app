import 'package:flutter/material.dart';
import 'package:profile_app/pages/edit_name.dart';
import 'package:profile_app/pages/edit_phone.dart';
import 'package:profile_app/pages/edit_email.dart';
import 'package:profile_app/pages/edit_bio.dart';
import 'package:profile_app/model/user.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User user = User(
      name: 'Sathya',
      phone: '612-425-6302',
      email: 'sathyagovindarajan28@gmail.com',
      bio:
          'This is my description about myself. I am super cool and wacky. I write flutter apps now. Motto: No Sacrifice, No Victory. Yes that\'s ripped straight from the first Transformers movie');

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
              TextButton(
                  onPressed: () {},
                  child: const Text('Change Profile Picture')),
              Divider(height: 50.0, color: Colors.grey[800]),
              ListTile(
                  title: const Text('Name'),
                  subtitle: Text(user.name),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditName(prevName: user.name),
                          ));

                      if (result != null) {
                        setState(() {
                          user.name = result;
                        });
                      }
                    },
                  )),
              const SizedBox(height: 10.0),
              ListTile(
                  title: const Text('Phone'),
                  subtitle: Text(user.phone),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EditPhone(prevPhone: user.phone),
                          ));

                      if (result != null) {
                        setState(() {
                          user.phone = result;
                        });
                      }
                    },
                  )),
              const SizedBox(height: 10.0),
              ListTile(
                  title: const Text('Email'),
                  subtitle: Text(user.email),
                  trailing: IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EditEmail(prevEmail: user.email),
                          ));

                      if (result != null) {
                        setState(() {
                          user.email = result;
                        });
                      }
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
                              Text(user.bio),
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
                                    builder: (context) =>
                                        EditBio(prevBio: user.bio),
                                  ));

                              if (result != null) {
                                setState(() {
                                  user.bio = result;
                                });
                              }
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
