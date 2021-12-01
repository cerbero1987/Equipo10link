import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Listado de cadenas
  var listado = [
    Persona("10001", "Ruthford Jay", "Soy de San Andres y me gusta pescar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/sloth_lazybones_sluggard_avatar-128.png"),
    Persona(
        "10002",
        "Willy Corzo",
        "Soy de Barranquilla y me gusta el arroz de liza!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/builder_worker_helmet-128.png"),
    Persona("10003", "Nataly Imitola", "Soy de Cartagena y me gusta programar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/girl_person_kid_child-128.png"),
    Persona("10004", "Andres Tunubala", "Soy de Cauca y me gusta programar!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/indian_man_male_person-128.png"),
    Persona("10005", "Maria Prieto", "Soy de Bogota y me gusta ajiaco!",
        "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/female_woman_avatar_portrait_1-128.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange[600],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  // Barra de Busqueda
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.orange[500],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 40,
                          ),
                          Icon(
                            Icons.social_distance_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                          Icon(
                            Icons.new_label,
                            color: Colors.black,
                            size: 40,
                          ),
                          Icon(
                            Icons.chat,
                            color: Colors.black,
                            size: 40,
                          ),
                          Icon(
                            Icons.gps_fixed,
                            color: Colors.black,
                            size: 40,
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                //
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  // Mapa de Cercanos
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          // Barra de Busqueda
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(
                                    Icons.sentiment_satisfied_alt,
                                    color: Colors.black,
                                    size: 60,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        //
                      )),
                  // Barra de Busqueda
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tu estado',
                        ),
                      ),
                    ),
                  ),
                ],
                //
              )),
          // Lista de Post
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemCount: listado.length,
              itemBuilder: (context, i) {
                return Card(
                  margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(
                    children: [
                      Image.network(listado[i].img),
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "Nombre: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(listado[i].name),
                                  const Spacer(),
                                  const Text(
                                    "Codigo: ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(listado[i].id),
                                ],
                              ),
                              const Text(
                                "Descripción:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(listado[i].desc),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange[600],
    );
  }
}

class Persona {
  late String id;
  late String name;
  late String desc;
  late String img;

  Persona(this.id, this.name, this.desc, this.img);
}
