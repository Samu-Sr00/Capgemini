import 'package:flutter/material.dart';
import 'subpages/list.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        // TARJETA PRINCIPAL - SE MUESTAN TODOS LOS WIDGETS
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            // BARRA SUPERIOR (MENU)
            // ignore: prefer_const_literals_to_create_immutables
            actions: <Widget>[
              const IconButton(
                icon: Icon(Icons.location_city),
                onPressed: null,
              ),
              const IconButton(
                  onPressed: null, icon: Icon(Icons.local_gas_station))
            ],
            leading: const IconButton(
              onPressed: null,
              icon: Icon(Icons.settings),
              iconSize: 30,
            ),
            title: const Text('Gasoleo A Córdoba'),
            centerTitle: mounted,
          ),
          body: const HomePage(),
        ),
      );
}
