import 'package:ceasa_app_v1/pages/home-rural.page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: const Color(0x00b8bde6).withOpacity(0.9),
      color: const Color.fromARGB(255, 3, 69, 183),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SafeArea(
              child: Image.asset(
            'img/v2.png',
            height: 186,
          )),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(50, 50),
                    topRight: Radius.elliptical(50, 50))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.blue.shade400,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/190/190683.png'),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
                        labelText: 'Email'),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: Icon(Icons.visibility),
                        hintText: 'Senha',
                        labelText: 'Senha'),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeRuralPage()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.blue),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        child: const Text(
                          'Fazer login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      )),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.black),
                  const SizedBox(height: 10),
                  const Text(
                    'Quero acessar com minha redes sociais',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            //margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.g_mobiledata_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                  const Divider(color: Colors.black),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Novo no App!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('CADASTRE-SE',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700)))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
