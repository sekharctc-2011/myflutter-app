import 'package:flutter/material.dart';
import 'sidemenu.dart';
import 'MyBottomNavigationBar.dart';
import 'main.dart';


class AppHomepage extends StatefulWidget {
  @override
  _AppHomepageState createState() => _AppHomepageState();
}

class _AppHomepageState extends State<AppHomepage> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: new NavDrawer(),
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: Text('RAF KHATA HOME',
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white,
            ),
          ),
        ),
        body: Container(
          height: size.height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              SizedBox(height: 10.0,),
              _TopTransactionSummary(),
              SizedBox(height: 20.0,),
              Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return Card(
                        color: Colors.white,
                        elevation: 2.0,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            child: Text("S"),
                          ),
                          title: Text("Subhransu Sekhar", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold,),),
                          subtitle: Text("6 min ago", style: TextStyle(fontSize: 10.0),),
                          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                          onTap: (){
                            debugPrint("tapped tapped");
                          },
                        ),
                      );
                    })),
            ],
          ),
        ),
        bottomNavigationBar: MyButtomNavigationBar(),
        floatingActionButton:FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/add_customer');
          },
          label: Text("Add customer"),
          icon: Icon(Icons.person_add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _TopTransactionSummary() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.blueGrey,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.00),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueGrey,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Rs. 350000/-',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('You Gave',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:14.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.00),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.redAccent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Rs. 6500/-',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('You Get',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:14.00,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}


