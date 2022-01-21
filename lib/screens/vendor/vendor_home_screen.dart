import 'package:flutter/material.dart';
import 'package:mercadolivre/components/constants.dart';
import 'package:mercadolivre/screens/home.dart';
import 'package:mercadolivre/screens/vendor/vendor_create_product.dart';
import 'package:mercadolivre/screens/vendor/vendor_product_screen.dart';
import 'package:mercadolivre/screens/welcome_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Painel administrativo', style: TextStyle(color: Colors.black),), 
        actions: [
          IconButton(icon: const Icon(Icons.exit_to_app,  color: Colors.black, ), 
          onPressed: () {
             Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                          (Route<dynamic> route) => false);
          }
          )
        ],
        centerTitle: true, 
        elevation: 10, 
             
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [              
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top:30, bottom:30,),
                child: Text('O que deseja fazer hoje?',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),              
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 15, bottom: 8.0, right: 15),
                child: Card(
                  child: ListTile(
                    tileColor: kPrimaryColor,
                    onTap: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    selected: true,
                    enabled: true,
                    enableFeedback: true,
                    leading: const Icon(
                      Icons.store_rounded,
                      size: 50,
                      color: Colors.black, 
                    ),
                    title: const Text(
                      'Todos os produtos',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Ver todos os produtos cadastrados na plataforma',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black, 
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 15, bottom: 8.0, right: 15),
                child: Card(
                  child: ListTile(
                    tileColor: kPrimaryColor,
                    onTap: () {
                      Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const CreateProduct()),
                      );
                    },
                    selected: true,
                    enabled: true,
                    enableFeedback: true,
                    trailing: const Icon(
                      Icons.add_circle_rounded,
                      size: 50,
                      color: Colors.black, 
                    ),
                    title: const Text(
                      'Criar produto',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Cadastre um novo produto',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black, 
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, left: 15, bottom: 8.0, right: 15),
                child: Card(
                  child: ListTile(
                    tileColor: kPrimaryColor,
                    onTap: () {
                       Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const VendorProduct()),
                      );
                    },
                    selected: true,
                    enabled: true,
                    enableFeedback: true,
                    leading: const Icon(
                      Icons.store_mall_directory_rounded,
                      size: 50,
                      color: Colors.black, 
                    ),
                    title: const Text(
                      'Meus produtos',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Gerencie seus produtos cadastrados',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black, 
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 8.0, left: 15, bottom: 8.0, right: 15),
              //   child: Card(
              //     child: ListTile(
              //       tileColor: kPrimaryColor,
              //       onTap: () => print('Tapped'),
              //       selected: true,
              //       enabled: true,
              //       enableFeedback: true,
              //       trailing: Icon(
              //         Icons.library_books_rounded,
              //         size: 50,
              //       ),
              //       title: Text(
              //         'Blog da Biuda',
              //         style: TextStyle(
              //             fontSize: 20, fontWeight: FontWeight.bold),
              //       ),
              //       subtitle: Text(
              //         'Confira conteúdos exclusivos para aplicar ao seu negócio',
              //         style: TextStyle(
              //           fontSize: 17,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),                  
            ],
          ),
        ],
      ),
    );
  }
}
