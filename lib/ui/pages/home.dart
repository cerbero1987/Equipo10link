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
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  // Mapa de Cercanos
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: Image.network(
                          'https://image.shutterstock.com/image-vector/vector-illustration-map-city-gps-600w-334438847.jpg'),
                    ),
                  ),
                  // Barra de Busqueda
                  Expanded(
                    flex: 9,
                    child: Container(
                      margin: const EdgeInsets.all(20.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Buscar Post',
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
