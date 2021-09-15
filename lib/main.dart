import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ProfilePage());

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Get rid of this widget after routing
    return MaterialApp(
        title: 'Profile App',
        home: Scaffold(
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
                  const ListTile(
                      title: Text('Name'),
                      subtitle: Text('Name goes here'),
                      trailing: Icon(Icons.edit)),
                  const SizedBox(height: 10.0),
                  const ListTile(
                      title: Text('Phone'),
                      subtitle: Text('Phone goes here'),
                      trailing: Icon(Icons.edit)),
                  const SizedBox(height: 10.0),
                  const ListTile(
                      title: Text('Email'),
                      subtitle: Text('Email goes here'),
                      trailing: Icon(Icons.edit)),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('Tell us about yourself',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  )),
                              SizedBox(height: 5.0),
                              Text(
                                  'This is my description about myself. I am super cool and wacky. I write flutter apps now. Motto: No Sacrifice, No Victory. Yes that\'s ripped straight from the first Transformers movie')
                            ]),
                      ),
                      const Expanded(flex: 1, child: Icon(Icons.edit)),
                    ],
                  )
                ],
              ),
            )));
  }
}
