import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          );
        });
  }
}
