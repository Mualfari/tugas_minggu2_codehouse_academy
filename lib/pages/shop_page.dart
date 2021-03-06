import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.movie),
                  title: Text('SpiderMan : No Way Home'),
                  subtitle: Text(
                      'Identitas Spider-Man sekarang sudah terungkap, dan Peter meminta bantuan Doctor Strange. namun sebuah kesalahan terjadi.....'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      child: const Text('Beli Tiket'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('Trailer'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
