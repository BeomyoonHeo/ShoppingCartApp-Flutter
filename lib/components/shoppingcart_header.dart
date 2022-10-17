import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopingcart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectdid = 0; // 상태 변수

  final List<String> selectedPic = [
    // 상수
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(
            selectedPic[selectdid],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderSelectorButton(0, Icons.directions_bike),
        _buildHeaderSelectorButton(1, Icons.motorcycle),
        _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
        _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
      ],
    );
  }

  Widget _buildHeaderSelectorButton(int id, IconData micon) {
    // m을 붙혀서 커스텀 변수라는것을 알려줌
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectdid
            ? kAccentColor
            : kSecondaryColor, //색상사용시 앞에 k를 붙혀서 찾기 쉽게 만든다. - 컨벤션
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            selectdid = id;
          });
        },
        icon: Icon(micon),
        color: Colors.black,
      ),
    );
  }
}
