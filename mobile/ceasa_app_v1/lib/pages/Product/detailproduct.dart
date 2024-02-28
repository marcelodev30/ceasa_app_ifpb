import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(200, 3, 69, 183),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        title: const Text('test 123 kk'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w500, fontSize: 24, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.favorite_sharp,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'img/laranja.png',
            height: 200,
            width: 200,
          ),
          const SizedBox(height: 5),
          Container(
            height: MediaQuery.of(context).size.height * 0.655,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(50, 50),
                    topRight: Radius.elliptical(50, 50))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Saco de Laranja 18 Kg',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('5.0'),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Icon(Icons.star, color: Colors.orange),
                      Text('(250)')
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Total: R\$ 75,00 ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Descrição',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Aprox. 80 unidades e valor Unitário: R\$ 1,06 ',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Localização',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sobre o vendedor',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 7,
                    //margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://picsum.photos/100/100'),
                      ),
                      title: Text(
                        'Oscar alho',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange),
                          Icon(Icons.star, color: Colors.orange),
                          Icon(Icons.star, color: Colors.orange),
                          Icon(Icons.star, color: Colors.orange),
                          Icon(Icons.star, color: Colors.orange),
                        ],
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Desde',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '15/02/2024',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
