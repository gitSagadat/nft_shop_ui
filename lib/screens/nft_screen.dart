import 'package:flutter/material.dart';
import 'package:nft_shop_ui/widgets/blur_continer.dart';

class NFTScreen extends StatelessWidget {
  const NFTScreen({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(tag:image,
                child: Image.asset(image),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: BlurContainer(
                  child: Container(
                width: 160,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.1),
                ),
                    child: const Text('Digital NFT Art',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                       ),
                     ),
                   ),
                 ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
