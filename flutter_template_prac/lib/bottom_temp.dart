import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class bottom_temp extends StatefulWidget {
  @override
  _bottom_tempState createState() => _bottom_tempState();
}

class _bottom_tempState extends State<bottom_temp> {
  var _index;
  @override
  Widget build(BuildContext context) {

    print("?$_index");
    if(_index==null)
      _index=0;

    return BottomNavigationBar(

      currentIndex: _index,
      items: [
        BottomNavigationBarItem(
            icon:Icon(Icons.view_list),
            title:Text('1st')
        ),
        BottomNavigationBarItem(
            icon:Icon(Icons.view_list),
            title:Text('2nd')
        ),
        BottomNavigationBarItem(
            icon:Icon(Icons.view_list),
            title:Text('3th')
        ),
      ],
      onTap: (index){

        setState(() {
          _index=index;

          print("bottom : $_index");
        });

      },

    );


  }
}
