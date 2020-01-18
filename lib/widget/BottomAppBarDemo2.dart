import 'package:flutter/material.dart';
import 'package:myfluterap/widget/eachview.dart';

class BottomAppBarDemo2 extends StatefulWidget{
  @override
  _BottomAppBarDemoState createState()=> _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo2>{


    //定义一个数组
    List<Widget> _eachView;
    //一个下标
    int _index = 0;

    void initState(){
      super.initState();
      _eachView = List();
      _eachView..add(EachView('home'))..add(EachView('me'));
    }

    //组件内容
    @override
    Widget build(BuildContext context){
      return new Scaffold(
        body: _eachView[_index],
        floatingActionButton: new FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
              return EachView('New Page');
            }));
          },
          tooltip: 'Increment',
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: SizedBox(
              height: 48,
              width: 48,
              child: Icon(Icons.add,color: Colors.lightBlueAccent),
            ),
          ),
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          elevation: 8,
        
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.near_me),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _index = 0; 
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.edit_location),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _index = 1; 
                  });
                },
              )
            ],
          ),
        ),
      );
    }    

}
