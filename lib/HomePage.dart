import 'package:flutter/material.dart';
import 'Login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: MaterialApp(
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 50.0,
              actions: [
                IconButton(
                  icon: Icon(Icons.chat_bubble),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return LoginI();
                        }));
                  },
                )
              ],
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                    MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              flexibleSpace: Container(color: Colors.blue),
              title: Row(
                children: [
                  Text('Yoke'),
                  Container(margin: EdgeInsets.only(left:10.0),child:TextFormField(initialValue: 'Search Here ...',),height: 25.0,width: 150.0,)
                ],
              ),
            ),
            drawer: Drawer(
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Container(
                            child: RawMaterialButton(
                              onPressed: () {},
                              child: Container(color: Colors.indigo),
                            ))),
                    Expanded(
                        child: Container(
                          child: Text('Row 1'),
                          color: Colors.black,
                        ),
                        flex: 2),
                    Expanded(
                        child: Container(
                          child: Text('Row 2'),
                          color: Colors.blueGrey[500],
                        ),
                        flex: 2),
                    Expanded(
                        child: Container(
                          child: Text('Row 3'),
                          color: Colors.blueGrey[600],
                        ),
                        flex: 2),
                    Expanded(
                      child: Container(
                        child: Text('Row 4'),
                        color: Colors.blueGrey[700],
                      ),
                      flex: 2,
                    ),
                  ],
                )),
            body: TabBarView(
              children: [
                Container(color: Colors.grey[100], child: Text('PAGE 1')),
                Container(
                    color: Colors.grey[200],
                    child: Center(child: Text('PAGE 2'))),
                Container(
                    color: Colors.grey[300],
                    child: Center(child: Text('PAGE 3'))),
              ],
            ),
            bottomNavigationBar: Container(
              color: Colors.red,
              child: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.store_outlined),
                ),
                Tab(
                  icon: Icon(Icons.group),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
