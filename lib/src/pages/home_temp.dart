import 'package:flutter/material.dart';



class HomePageTemp extends StatelessWidget {

  final opciones = ['2014 UCS', '3021 SSS', '1110 PPP', '4343 AAA', '5055 ASS' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title : Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map (( item ) {

      return Column(
        children: <Widget>[
          ListTile(

            leading: Icon(Icons.directions_car),
            title: Text(item),
            subtitle: Text('Unit'),
            trailing: Icon(Icons.ev_station),
            onTap: (){},
            

          ),
          Divider(),
        ],
      );

    }).toList();


  }
}