import 'package:flutter/material.dart';
import 'package:mercadolivre/components/constants.dart';
import 'package:mercadolivre/screens/welcome_screen.dart';
import 'package:mercadolivre/widgets/product_details.dart';
import 'package:mercadolivre/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text(
          'Mercado Livre',
        ),
        actions: [
          IconButton(icon: const Icon(Icons.exit_to_app), 
          onPressed: () {
             Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                          (Route<dynamic> route) => false);
          }
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 1.0, right: 1.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                // margin: EdgeInsets.all(kDefaultPadding),
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 10),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                        ),
                        hintText: 'O que está procurando?',
                        hintStyle: TextStyle(color: Colors.black)),
                    onChanged: (value) {}),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButtonHideUnderline(
                    child: Center(
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.white,
                        value: null,
                        items: null,
                        hint: const Text(
                          'Cidades',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        onChanged: (city) {},
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    width: 2,
                    height: 40,
                  ),
                  DropdownButtonHideUnderline(
                    child: Center(
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.white,
                        value: null,
                        items: null,
                        hint: const Text(
                          'Categorias',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 0.4),
                        ),
                        onChanged: (category) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: SingleChildScrollView(
                child: Column(                
                  children: [
                  ProductCard(
                    title: 'Moto G4',
                    price: 'R\$ 33,00',
                    image:
                    'https://www.kickmobiles.com/images/thumbs/0020804_motorola-moto-g4-play_808.jpeg',
                    onTapItem: () { 
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProductDetails())
                      );
                     },
                  ),
                  ProductCard(
                    title: 'Macbook PRO',
                    price: 'R\$ 20.000',
                    image:
                        'https://cdn2.vox-cdn.com/uploads/chorus_asset/file/7390261/vpavic_161031_1256_0264.0.jpg',
                    onTapItem: () {  },
                  ),
                  ProductCard(
                    title: 'Nike Airmax',
                    price: 'R\$ 650,00',
                    image:
                        'https://sneakernews.com/wp-content/uploads/2020/06/nike-air-max-270-react-supernova-CW8567-001-12.jpg', 
                        onTapItem: () {  },
                  ),
                  ProductCard(
                    title: 'Ventilador Arno',
                    price: 'R\$ 150,00',
                    image:
                        'https://a-static.mlcdn.com.br/618x463/ventilador-de-mesa-arno-ultra-silence-force-50cm-3-velocidades/magazineluiza/020458600/e2d84c8b58b7ecb156fb6620e4c55077.jpg',
                     onTapItem: () {  },

                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}