import 'package:demo_project/helper/constant.dart';
import 'package:flutter/material.dart';



class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColorBackground,
      appBar: myAppBar,
      drawer: mydrawer,
      body: const Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
             
            ),
          ),
          Expanded(
         child: SizedBox(),)
        ],
      ),
    );
  }
}
