import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Image(
            alignment: Alignment.topCenter,
            image: AssetImage("assets/image3.png"),
            fit: BoxFit.contain,
            width: double.infinity,
           // height: MediaQuery.of(context).size.height / 2,
          ),
          Positioned(
            top: 20,
            left: 30,
            right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(LineAwesomeIcons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                Text(
                  "Explore",
                   style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'CentraleSansRegular'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                Text(
                  "Categories",
                   style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 27,
                            fontFamily: 'CentraleSansRegular',
                            fontWeight: FontWeight.w100),
                ),
                Text(
                  "View All",
                   style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                            fontFamily: 'CentraleSansRegular',
                            fontWeight: FontWeight.w100),
                ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            height: 200,
            width: 300,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.asset("assets/slide1.png",),
                SizedBox(width: 15,),
                Image.asset("assets/slide2.png"),
                SizedBox(width: 15,),
                Image.asset("assets/slide3.png")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 300),
            height: 400,
            width: 400,
            child: ListView(
              children: <Widget>[
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad1.png"),
                  title: Text("Feeding America Society",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Oregon",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 12,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad2.png"),
                  title: Text("Ubuntu",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Maryland",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 13,
                        )),
                ),
                ListTile(
                  trailing: Icon(Icons.more_vert),
                  leading: Image.asset("assets/ad3.png"),
                  title: Text("Dallas Morning News",
                  style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        )),
                        subtitle: Text("Washington",
                        style: TextStyle(
                          fontFamily: "CentraleSansRegular",
                          fontSize: 13,
                        )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}