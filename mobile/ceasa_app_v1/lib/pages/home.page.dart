import 'package:flutter/material.dart';

import '../repository/protudos.repository.dart';
import '../widget/card.custom.dart';
import 'Product/detailproduct.dart';

class HomeComercioPage extends StatefulWidget {
  const HomeComercioPage({super.key});

  @override
  State<HomeComercioPage> createState() => _HomeComercioPageState();
}

class _HomeComercioPageState extends State<HomeComercioPage> {
  var repository = Produtos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const SizedBox(
          width: 240,
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.white),
              hintText: 'Pesquisar produtos',
              hintStyle: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: repository.list.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailProduct()));
            },
            child: CardCustom(
              model: repository.list[index],
            ),
          );
        },
      ),
    );
  }
}
//Connect Rural