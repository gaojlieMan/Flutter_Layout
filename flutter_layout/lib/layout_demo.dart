import 'package:flutter/material.dart';

class layoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
       alignment: Alignment(0.0,0.0),
      child: AspectDemo(),
    );
  }
}

//Row Colum

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              height: 80.0,
              child: Text('hello',style: TextStyle(fontSize: 15.0),),
              // Icon(Icons.add,size: 120,),
            ),
          ),

          Expanded(
            child:  Container(
              height: 80.0,
              color: Colors.blue,
              child: Text('heihei',style: TextStyle(fontSize: 30.0),),
              // Icon(Icons.ac_unit,size: 60,),
            ),
          ),
          Expanded(
            child:  Container(
              height: 80.0,
              color: Colors.white,
              child: Text('hahahaha',style: TextStyle(fontSize: 60.0),),
              // Icon(Icons.alarm,size: 30,),
            ),
          )
        ],
      ),
    );
  }
}

//叠加布局（垂直布局）相对于Stack最大边

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0,0),
      children:<Widget> [
        Positioned(
            child:  Container(
              color: Colors.white,
              width: 400,
              height: 200,
              child: Icon(Icons.add),
            ),
        ),

        Positioned(
            // right: 0,
            child: Container(
              color: Colors.red,
              width: 250,
              height: 250,
              child: Icon(Icons.search),
            ),
        ),

        Positioned(
            right: 0,
            top: 0,
            child:  Container(
              color: Colors.blue,
              width: 50,
              height: 50,
              child: Icon(Icons.add),
            ),
        )
      ],
    );
  }
}

//比例不均

class AspectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //如果在Containter里面增加快高 里面的设置快高比例无效 以外层为准
      color: Colors.blue,
      width: 300,
      // height: 300,
      child: AspectRatio(
        aspectRatio: 2/1,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
    );
  }
}






