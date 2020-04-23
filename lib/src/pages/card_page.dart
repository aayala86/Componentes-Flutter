import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),

      body: ListView(
          padding: EdgeInsets.all(10.0),
         children: <Widget>[

           _cardTipo1(),
           SizedBox(height:30.0),
           _cardTipo2(),
           _cardTipo1(),
           SizedBox(height:30.0),
           _cardTipo2(),
           _cardTipo1(),
           SizedBox(height:30.0),
           _cardTipo2(),
           _cardTipo1(),
           SizedBox(height:30.0),
           _cardTipo2(),

         ],
      ),

    );

  }

  _cardTipo1 () {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0), ),
      child: Column(
         children: <Widget>[
           ListTile(
             leading: Icon(Icons.phone, color: Colors.blue,),
             title: Text('Soy el Titulo de esta Tarjeta'),
             subtitle: Text('Aqui esta el texto del subtitlo del ListTitle para que sea apreciado por mis leales subditos'),
           ),
           Row(
             children: <Widget>[
               FlatButton(
                child: Text('Cancelar'),
                onPressed: (){}, 
              ),

               FlatButton(
                child: Text('Ok'),
                onPressed: (){}, 
              ),
             ],
           ),
         ],
      ),
    );

  }

  _cardTipo2() {

    final card = Card(

      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No se que poner')),
        ],
      ),
    );

    return Container(
      child: card,
    );

  }
}