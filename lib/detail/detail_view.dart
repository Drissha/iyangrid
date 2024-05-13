import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final Map<String, String> itemData;

  const DetailView({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Wisata Bandung",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.network(itemData['imageURL'] ?? ""),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container()
            ],
          )
        ],
      ),
    ));
  }
}
