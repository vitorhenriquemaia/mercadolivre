import 'package:flutter/material.dart';
import 'package:mercadolivre/components/constants.dart';
import 'package:mercadolivre/screens/home.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do anúncios'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            Expanded(
              child: Column(
                children: [
                  Image.network(
                    'https://th.bing.com/th/id/OIP.HncErRDd3lX_OEc-vLnhywHaHa?pid=ImgDet&rs=1',
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Moto G4',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'R\$ 1.350,00',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ]),
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child: Text(
              'Descrição',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Moto G4 PLUS, produto novo e com garantia de 1 ano, por muito tempo foi top de vendas no Brasil, conhecido pela durabilidade da sua bateria',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Rio de Janeiro, RJ',
              style: TextStyle(fontSize: 18, letterSpacing: 0.5),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                      (Route<dynamic> route) => false);
                },
                minWidth: 200.0,
                height: 42.0,
                child: const Text(
                  'Falar com Vendedor',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
