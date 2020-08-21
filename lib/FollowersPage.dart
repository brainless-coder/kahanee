import 'package:flutter/material.dart';

class Names {
  String name;
  int selected;

  Names.fromMapObject(Map<String, dynamic> map) {
    this.name = map['name'] ?? '';
    this.selected = map['selected'] ?? 0;
  }
} // endClassNames

class KaahaniLayout extends StatefulWidget {
  @override
  _KaahaniLayoutState createState() => _KaahaniLayoutState();
}

class _KaahaniLayoutState extends State<KaahaniLayout> {
  List<Names> namesList; // place this as a member of the main class

  @override
  void initState() {
    super.initState();
    namesList = List<Names>(); // place this onInit
    loadNames();
  }

  void loadNames() {
    var myMap = Map<String, dynamic>();
    myMap['name'] = 'Suyash';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Alok Gaurav';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Sunny Bozo';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Anant';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Tushar Pandey';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Shanu';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
    myMap['name'] = 'Satyam';
    myMap['selected'] = 0;
    namesList.add(Names.fromMapObject(myMap));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: Text(
              'Followers',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 35.0,
              ),
            ),
          ),
          myBody(),
        ],
      ),
    );
  }

  Widget myBody() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: namesList?.length,
        itemBuilder: (BuildContext context, int position) {
          return Material(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage('images/pic.jpg'),
                ),
                title: Text(
                  namesList[position].name,
                  style: TextStyle(
                    fontSize: 23.0,
                  ),
                ),
                trailing: RaisedButton(
                  onPressed: () {
                    setState(() {
                      namesList[position].selected == 1
                          ? namesList[position].selected = 0
                          : namesList[position].selected = 1;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  textColor: Colors.white,
                  color: namesList[position].selected == 0
                      ? Color(0xFF240f82)
                      : Colors.teal,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        namesList[position].selected == 0
                            ? Icons.add
                            : Icons.done,
                        size: 25.0,
                      ),
                      Text(
                        namesList[position].selected == 0
                            ? 'Follow'
                            : 'Following',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
