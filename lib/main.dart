import 'package:flutter/material.dart';
import 'package:shopingcart/components/shoppingcart_detail.dart';
import 'package:shopingcart/components/shoppingcart_header.dart';
import 'package:shopingcart/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 삭제
      theme: theme(),
      home: ShoppingCartPage(),
    ); // 콜백됨
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(), // 메서드로 뺌
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() => AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print("클릭됨");
          },
        ),
        actions: [
          //디자인 생성 시 순수한 디자인으로 만드는것이 좋다. => 재활용을 위해서
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("클릭됨");
            },
          ),
          SizedBox(
            width: 16,
          ),
        ],
      );
}
