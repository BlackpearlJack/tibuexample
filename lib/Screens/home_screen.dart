import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/profile/profile_screen.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _selectedCleaning({@required Color color, @required String title, @required String subtitle})   {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: 20,),
      height: 120,
      width: 240,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0)
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(subtitle,
            style: TextStyle(
              fontSize: 19.0,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectedExtras({@required String image,@required String name }){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
            color: Colors.grey,
            width: 2
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60.0,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image))
            ),
          ),
          SizedBox(height: 10.0,),
          Text(name,style: TextStyle(fontSize: 17.0,),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title: Text(
            'Hello, '
                'Ella',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.person, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                })
          ],
        ),
        body: Container(
          child: Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 10, top: 10),
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,//learn this
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      top: 30.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 300.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset('assets/images/pic1.jpg'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset('assets/images/pic2.jpg'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          child: Card(
                            child: Wrap(
                              children: <Widget>[
                                Image.asset('assets/images/pic3.jpg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(//hae
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 30.0,
                  ),

                  child: Column(
                    children: [
                      Text(
                        'How can we help you Today',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(
                        top: 20.0,),
                        child: Container(
                          height: 300,
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 8,
                            childAspectRatio: 1.00,
                            children: [
                              _selectedExtras(
                                  image: 'assets/images/homevist.png',
                                  name: 'Home Visit'
                              ),
                              _selectedExtras(
                                  image: "assets/images/packages.png",
                                  name: 'Packages'
                              ),
                              _selectedExtras(
                                  image: 'assets/images/lab.jpg',
                                  name: 'Lab Pickup'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


