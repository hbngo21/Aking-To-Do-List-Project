import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NinthScreen extends StatelessWidget {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {}
  @override
  Widget build(BuildContext context) {
    final List<String> items =
        new List<String>.generate(10, (i) => "item  ${i + 1}");
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xfff96060),
        ),
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                    tabs: [
                      Tab(
                          child: Text("Today",
                              style: TextStyle(
                                fontFamily: 'AvenirNextRoundedPro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ))),
                      Tab(
                          child: Text("Month",
                              style: TextStyle(
                                fontFamily: 'AvenirNextRoundedPro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Colors.white.withOpacity(0.5)),
                centerTitle: true,
                title: new Text(
                  "Work List",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'AvenirNextRoundedPro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 20, 0, 0),
                        child: Text("TODAY, AUG 4/2018",
                            style: TextStyle(
                              color: Color.fromRGBO(154, 154, 154, 1),
                              fontFamily: 'AvenirNextRoundedPro',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Slidable(
                        actions: <Widget>[
                          IconSlideAction(
                              icon: Icons.more,
                              caption: 'MORE',
                              color: Colors.blue,
                              //not defined closeOnTap so list will get closed when clicked
                              onTap: () {
                                print("More ${items[0]} is Clicked");
                              }),
                        ],
                        child: ListTile(
                          leading: Icon(Icons.circle_outlined,
                              color: Color.fromRGBO(96, 116, 249, 1)),
                          title: Text("Go fishing with Stephen",
                              style: TextStyle(
                                color: Color.fromRGBO(49, 49, 49, 1),
                                fontFamily: 'AvenirNextRoundedPro',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          subtitle: Text("9:00am",
                              style: TextStyle(
                                color: Color.fromRGBO(155, 155, 155, 1),
                                fontFamily: 'AvenirNextRoundedPro',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          trailing: Icon(Icons.arrow_back),
                        ),
                        actionPane: SlidableDrawerActionPane(),
                      )
                    ],
                  ),
                  Icon(Icons.directions_transit),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color.fromRGBO(41, 46, 78, 1),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.check_circle_outline),
                    label: 'My Task',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'Menu',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'Quick',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                unselectedItemColor: Color.fromRGBO(142, 142, 147, 1),
                onTap: _onItemTapped,
              ),
            )));
  }
}
