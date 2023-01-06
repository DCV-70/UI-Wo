import 'package:flutter/material.dart';

import '../ProfileTab/firstTab.dart';
import '../ProfileTab/secondTab.dart';
import '../ProfileTab/thirdTab.dart';


class Wo extends StatefulWidget {
  const Wo({Key? key}) : super(key: key);

  @override
  State<Wo> createState() => _WoState();
}

class _WoState extends State<Wo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            leading: IconButton(
              icon: Image.asset("assets/icons/chevron-down 7.jpg"

              ),
              color: Colors.black,
              onPressed: () {},
            ),
              title: Text("shreshtha12V",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0, 4),
                    blurRadius: 4.0,
                    color: Color.fromARGB(0, 0, 0, 25),
                  )
                ],
              ),),
          actions:[ IconButton(
            icon: Image.asset("assets/icons/More.jpg"), onPressed: () {  },
          ),],

          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 8,
                      offset: Offset(-7, -12),
                      color: Color.fromRGBO(255, 255, 255, 1.0)),
                  BoxShadow(
                      blurRadius: 5,
                      offset: Offset(5, 5),
                      color: Color.fromRGBO(22, 27, 29, 0.15))
                ],
              ),
              child: Column(
                children: [
                  Container(

                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("45.8k",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16
                                  ) ,),
                                Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                                Text("Followers",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12
                                  ) ,)
                              ],

                            ),
                            Container(
                              height: 75.49,
                              width: 75.49,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/icons/Rectangle 12960.png")),
                                borderRadius: BorderRadius.circular(15),
                                )
                              ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("2000",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16
                                  ) ,),
                                Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                                Text("Following",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12
                                  ) ,)
                              ],

              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Text
                    ("Shreshtha Verma",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1

                  ),),
                  Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                  Text
                    ("Experience Tourism",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1

                    ),),
                  Text
                    ("These are as education in themselves",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1

                    ),),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Text
                    ("www.google.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1

                    ),),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(100, 225, 220, 0.7),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){},
                        child: Text("Following",

                        style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 2 ),),
                      ),
                    ),
                  )

                ],

              ),
            ),
            TabBar(
                tabs:[
                  Tab(
                    child: Image.asset("assets/icons/Group 21379.png"),
                  ),
                  Tab(
                    child: Image.asset("assets/icons/Group.jpg"),
                  ),

                  Tab(
                    child: Image.asset("assets/icons/cubes (1) 1.png"),
                  ),


                ] ),
            Expanded(child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
