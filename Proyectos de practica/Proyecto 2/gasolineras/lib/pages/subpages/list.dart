import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // <<CUERPO DE LA APP

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FuelStationList()),
    );
  }
}

class FuelStation {
  String name;
  String direction;
  String price;
  String porcent;

  FuelStation(
      {required this.name,
      required this.direction,
      required this.price,
      required this.porcent});
}

// ignore: non_constant_identifier_names
Widget FuelStationList() {
  List<FuelStation> stations = [
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
    FuelStation(
        name: "Plenoil", direction: "Aviles", price: "1.86 €", porcent: "8%"),
  ];

  return ListView.builder(
    itemCount: stations.length,
    itemBuilder: (context, index) {
      return Card(
        child: StationCard(context, stations[index]),
      );
    },
  );
}

// ignore: non_constant_identifier_names
Widget StationCard(BuildContext context, FuelStation stations) {
  String name = stations.name;
  String direction = stations.direction;
  String price = stations.price;
  String porcent = stations.porcent;

  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
    child: ListTile(
      title: Row(
        children: <Widget>[
          Column(
            // ignore: prefer_const_constructors
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(Icons.local_gas_station),
                iconSize: 40,
              )
            ],
          ),
          Expanded(child: Column()),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                direction,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
          Expanded(child: Column()),
          Column(
            children: [
              Text(
                price,
                style: const TextStyle(fontSize: 26, color: Colors.grey),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                porcent,
                style: const TextStyle(color: Colors.lightGreen),
              )
            ],
          )
        ],
      ),
    ),
  );
}
