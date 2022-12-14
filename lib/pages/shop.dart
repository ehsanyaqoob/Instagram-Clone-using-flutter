import 'package:flutter/material.dart';

import '../utilis/shopgrid.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                      Container(
                          child: Text('Shop',
                              style: TextStyle(color: Colors.green[500])))
                    ],
                  )))),
      body: ShopGrid(),
    );
  }
}
