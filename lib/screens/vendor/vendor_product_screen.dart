import 'package:flutter/material.dart';
import 'package:mercadolivre/components/constants.dart';
import 'package:mercadolivre/widgets/product_card.dart';

class VendorProduct extends StatefulWidget {
  const VendorProduct({Key? key}) : super(key: key);

  @override
  _VendorProductState createState() => _VendorProductState();
}

class _VendorProductState extends State<VendorProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Produtos Cadastrados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              GestureDetector(
                      onTap: () {},
                        child: ProductCard(
                      title: 'Moto G4',
                      price: 'R\$ 33,00',
                      image:
                          'https://th.bing.com/th/id/OIP.HncErRDd3lX_OEc-vLnhywHaHa?pid=ImgDet&rs=1', 
                          onTapItem: () {  },
                    )),
                    ProductCard(
                      title: 'Macbook PRO',
                      price: '20.000',
                      image:
                          'https://cdn2.vox-cdn.com/uploads/chorus_asset/file/7390261/vpavic_161031_1256_0264.0.jpg', onTapItem: () {  },
                    ),
                    ProductCard(
                      title: 'Nike Airmax',
                      price: '650,00',
                      image:
                          'https://sneakernews.com/wp-content/uploads/2020/06/nike-air-max-270-react-supernova-CW8567-001-12.jpg', onTapItem: () {  },
                    ),
                    ProductCard(
                      title: 'Ventilador Arno',
                      price: '150,00',
                      image:
                          'https://a-static.mlcdn.com.br/618x463/ventilador-de-mesa-arno-ultra-silence-force-50cm-3-velocidades/magazineluiza/020458600/e2d84c8b58b7ecb156fb6620e4c55077.jpg', onTapItem: () {  },
                    ),
            ]
          ),
        ),
      ),
    );
  }
}