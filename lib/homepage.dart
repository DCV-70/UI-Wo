import 'package:flutter/material.dart';

import 'Screens/Home.dart';
import 'Screens/search.dart';
import 'Screens/videos.dart';
import 'Screens/wo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Videos(),
    Search(),
    Wo()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Wo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,

        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(

              image: AssetImage("assets/icons/Group.png")
            )
          ),
        ),

        onPressed: () {},

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(
        ),
        notchMargin: 20,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                      onPressed: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/icons/search 3.jpg")
                      , color: Colors.grey,size: 40),
                    ],
                  ),),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/search 3.jpg"),
                          size: 40,
                          color: Colors.grey,
                        )
                      ],
                    ),),

                ],

              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 40,
                          color: Colors.grey,
                        )
                      ],
                    ),),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          size: 40,
                          color: Colors.grey,
                        )
                      ],
                    ),),

                ],

              )
            ],
          ),
        ),
      ) ,
    );
  }
}
