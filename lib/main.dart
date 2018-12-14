import 'package:flutter/material.dart';

void main(){

  runApp( new MaterialApp(
    /**/
   home: MyApp(),

  ));
}


class MyApp  extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(

        appBar: new AppBar(
          title: new Text("My app"),
        ),
      /*Cuerpo de la app*/
      body: new Container(
        /*Layout*/
        child: Center(
         child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[

              new CardView(
                  title: new Text("I love flutter "),
                  image: new  Icon(Icons.favorite,size: 40.0,)),

              new CardView(
                title:  new Text("I like flutter"),
                image: new Icon(Icons.add_photo_alternate, size: 40.0))

            ]
          ),
        ),
      ),);
  }
}


/*Clase que crea nuestras CardsViews*/
class CardView extends StatelessWidget{
  /*Titulo de la carta*/
  final Widget title;
  /*Imagen de la carta */
  final Widget image;

  CardView({this.title, this.image});

  Widget build(BuildContext context){
     return new Container(
       padding: const EdgeInsets.only(bottom: 3.0),
       child: new Card(
         child: Container(
           padding: const  EdgeInsets.all(20.0),
             child: Column(
               children: <Widget>[this.title, this.image],
             )
         )
         ,
       ),


     );
  }

}



