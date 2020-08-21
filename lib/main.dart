import 'package:flutter/material.dart';

void main() => runApp(settingsPage());

class settingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings Page',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kahanee'),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.settings,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                    ),
                  ),
                  Icon(
                    Icons.done,
                    size: 35.0,
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              settingsRow('Edit Profile'),
              settingsRow('Change Password'),
              settingsRow('Invite a friend'),
              settingsRow('Privacy'),
              settingsRow('Logout'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: BottomNavigationBar(
              elevation: 10,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.orangeAccent,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                  title: Text(''),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
                  activeIcon: Icon(Icons.person),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile settingsRow(String settingsText) {
    return ListTile(
      onTap: () {},
      title: Text(
        '$settingsText',
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }
}
