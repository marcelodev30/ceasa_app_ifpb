import 'package:brasil_fields/brasil_fields.dart';
import 'package:ceasa_app_v1/pages/home.page.dart';
import 'package:ceasa_app_v1/pages/sign.in.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 69, 183),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SafeArea(
            child: Column(
              children: [
                SizedBox(height: 68),
                Text(
                  'Quem é você?',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(50, 50),
                  topRight: Radius.elliptical(50, 50)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeComercioPage()));
                  },
                  child: Container(
                    width: 289,
                    height: 288,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(55, 3, 69, 183),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/11450/11450005.png'),
                        ),
                        const Text(
                          'Comerciente',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage())),
                  child: Container(
                    width: 280,
                    height: 288,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(55, 3, 69, 183),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/256/122/122478.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Produtor Rural',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CepPage extends StatelessWidget {
  const CepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: const Text('POR FAVOR, DIGITE O CEP DA SUA REGIÃO'),
      content: Wrap(
        children: [
          TextField(
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              CepInputFormatter(),
            ],
            decoration: const InputDecoration(hintText: 'EX: 07210-000'),
          ),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 5),
                  Text('USAR MINHA LOCALIZAÇÃO')
                ],
              )),
          const Text(
              'Digite seu CEP para verificarmos os produtos disponíveis para a sua região.')
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: const Text('OK'),
        )
      ],
    );
  }
}
