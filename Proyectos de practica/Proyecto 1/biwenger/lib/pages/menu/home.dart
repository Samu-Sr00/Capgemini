import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // <<CUERPO DE LA APP

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: PlayerList()),
    );
  }
}

// CUERPO DE LA APP>>

// <<WIDGETS Y CLASES

class Player {
  // AQUI SE ALMACENAN LOS NOMBRES, LA POSICION Y EL EQUIPO DE LOS JUGADORES
  String profile;
  String name;
  String team;
  String position;
  String dorsal;

  Player(
      {required this.profile,
      required this.name,
      required this.team,
      required this.position,
      required this.dorsal});
}

// ignore: non_constant_identifier_names
Widget PlayerList() {
  // SE RECOGEN LOS JUGADORES EN UNA LISTA PARA SER MOSTRADOS
  List<Player> players = [
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Juan Carlos",
        team: "http://images.gofreedownload.net/sporting-gijon-40964.jpg",
        position: "DEF",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Rodrigo",
        team:
            "https://seeklogo.com/images/A/atletico-madrid-logo-ACB5B5015B-seeklogo.com.png",
        position: "P",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Manolo",
        team: "http://images.gofreedownload.net/sporting-gijon-40964.jpg",
        position: "DEF",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Paco",
        team:
            "https://seeklogo.com/images/A/atletico-madrid-logo-ACB5B5015B-seeklogo.com.png",
        position: "C",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Pedro",
        team: "https://assets.stickpng.com/images/584a9b47b080d7616d298778.png",
        position: "C",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "David",
        team:
            "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge.png",
        position: "DEL",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Diego",
        team: "https://assets.stickpng.com/images/584a9b47b080d7616d298778.png",
        position: "P",
        dorsal: "0"),
    Player(
        profile:
            "https://as2.ftcdn.net/v2/jpg/00/97/00/09/1000_F_97000908_wwH2goIihwrMoeV9QF3BW6HtpsVFaNVM.jpg",
        name: "Sergio",
        team:
            "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge.png",
        position: "DEL",
        dorsal: "0"),
  ];

  return ListView.builder(
    itemCount: players.length,
    itemBuilder: (context, index) {
      return Card(
        child: PlayerCard(context, players[index]),
      );
    },
  );
}

Widget getPositionCircle(String position) {
  Widget returnWidget = Container();

  switch (position) {
    case 'DEF':
      returnWidget = CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          position,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

      break;

    case 'C':
      returnWidget = CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 7, 255, 251),
        child: Text(
          position,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

      break;

    case 'P':
      returnWidget = CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(
          position,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

      break;

    case 'DEL':
      returnWidget = CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 181, 72, 240),
        child: Text(
          position,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

      break;

    case 'DI':
      returnWidget = CircleAvatar(
        backgroundColor: const Color.fromARGB(255, 223, 98, 20),
        child: Text(
          position,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      );

      break;

    default:
      returnWidget = CircleAvatar(
        backgroundColor: Colors.amber,
        child: Text(
          position,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
  }

  return returnWidget;
}

// ignore: non_constant_identifier_names
Widget PlayerCard(BuildContext context, Player player) {
  // HEREDA LOS JUGADORES GUARDADOS EN LA LISTA PLAYERS
  String profileUrl = player.profile;
  String name = player.name;
  String team = player.team;
  String position = player.position;
  // String dorsal = player.dorsal;

  return TextButton(
    onPressed: () {
      ShowPlayerProfile(context, player);
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: ListTile(
        title: Row(
          children: <Widget>[
            Column(
              //COLUMNA DEL ESCUDO Y LA POSICION.
              children: [
                CircleAvatar(
                  maxRadius: 15,
                  minRadius: 15,
                  backgroundImage: NetworkImage(team),
                ),
                const SizedBox(height: 10),
                CircleAvatar(
                  maxRadius: 15,
                  minRadius: 15,
                  child: getPositionCircle(position),
                ),
              ],
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: 105,
              height: 70,
              child: Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  Align(
                      alignment: Alignment.bottomRight,
                      child: const CircleAvatar(
                        maxRadius: 8,
                        minRadius: 8,
                        backgroundColor: Color.fromARGB(255, 241, 235, 235),
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 12),
                        ),
                      )),
                  SizedBox(
                    width: 100,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(profileUrl),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              //COLUMNA DEL NOMBRE Y CUERPO.
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, // NOMBRE DEL JUGADOR
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 20,
                ),
                const Text("")
              ],
            )
          ],
        ),
      ),
    ),
  );
}

// PERFIL DE JUGADOR

// ignore: non_constant_identifier_names
void ShowPlayerProfile(BuildContext context, Player player) {
  String profile = player.profile;
  String team = player.team;
  String position = player.position;
  String name = player.name;

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: NetworkImage(profile),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(child: Column()),
                      CircleAvatar(
                        maxRadius: 15,
                        backgroundImage: NetworkImage(team),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        maxRadius: 15,
                        child: getPositionCircle(position),
                      ),
                      Expanded(child: Column())
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(name),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ],
        );
      });
}

// WIDGETS Y CLASES>>