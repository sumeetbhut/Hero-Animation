import 'package:flutter/material.dart';
import 'detail.dart';

class Home extends StatelessWidget {

  double rating=0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    tag: 'photo1',
                    child:  _circleImage(context,'photo1',"https://auto.ndtvimg.com/car-images/large/ferrari/488-gtb/ferrari-488-gtb.jpg?v=6"),
                  ),
                  Hero(
                    tag: 'photo2',
                    child: _circleImage(context,'photo2',"https://spectatecars.com/wp-content/uploads/2017/10/2019-Ferrari-488-Spider-featured-815x527.jpg"),
                  ),
                  Hero(
                    tag: 'photo3',
                    child: _circleImage(context,'photo3',"https://www.thetruthaboutcars.com/wp-content/uploads/2019/01/2019-mercedes-benz-a-class-sedan-e1547745740100-610x408.jpg"),
                  )
                ],
              )
            ],
          )),
    );
  }
  
  Widget _circleImage( BuildContext context, String tag,String imageUrl){
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(imageUrl,tag))),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.fill)
        ),
      ),
    );

  }
}
