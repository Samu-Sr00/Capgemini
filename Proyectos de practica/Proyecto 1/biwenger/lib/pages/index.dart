import 'package:flutter/material.dart';
import 'menu/home.dart';

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
                icon: Icon(Icons.menu),
                onPressed: null,
              )
            ],
            leading: const IconButton(
              onPressed: null,
              icon: Icon(Icons.account_circle),
              iconSize: 40,
            ),
            title: const Text('Home'),
            centerTitle: mounted,
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.emoji_events)),
              Tab(icon: Icon(Icons.sports_basketball)),
              Tab(icon: Icon(Icons.sync_alt)),
              Tab(icon: (Icon(Icons.calendar_month))),
              Tab(icon: (Icon(Icons.groups))),
            ]),
          ),
          body:
              // ignore: prefer_const_constructors
              TabBarView(children: [
            BuildPage_home("Home"),
            BuildPage_2("2"),
            BuildPage_3("3"),
            BuildPage_4("4"),
            BuildPage_5("5"),
            BuildPage_6("6")
          ]),
          // PlayerList(), // SE LLAMA A LA LISTA DE JUGADORES PARA SU VISUALIZACIÓN
          floatingActionButton: const FloatingActionButton(
            onPressed: null,
            backgroundColor: Color.fromARGB(255, 160, 161, 160),
            child: Icon(Icons.more_vert),
          ),
        ),
      );
}

// ignore: non_constant_identifier_names
// ignore: prefer_const_constructors, non_constant_identifier_names
Widget BuildPage_home(String text) => Center(
      child: const HomePage(),
    );
// ignore: non_constant_identifier_names
Widget BuildPage_2(String text) => const Center(
      child: Text("segunda"),
    );
// ignore: non_constant_identifier_names
Widget BuildPage_3(String text) => const Center(
      child: Text("tercera"),
    );
// ignore: non_constant_identifier_names
Widget BuildPage_4(String text) => const Center(
      child: Text("cuarta"),
    );
// ignore: non_constant_identifier_names
Widget BuildPage_5(String text) => const Center(
      child: Text("quinta"),
    );
// ignore: non_constant_identifier_names
Widget BuildPage_6(String text) => const Center(
      child: Text("sexta"),
    );
