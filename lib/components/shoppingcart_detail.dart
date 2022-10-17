import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          _buildDetailNameAndPrice(), // ctrl + alt + m
          _buildDetailRatingAndReviewCount(), // 최대한 잘게 쪼개서 재사용 할 수 있게 한다.
          _buildDetailColorOptions(),
          _buildDetailButton(),
        ],
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$699", // 역슬래시를 붙혀서 $를 인식 시켜주었다.
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return SizedBox();
  }

  Widget _buildDetailColorOptions() {
    return SizedBox();
  }

  Widget _buildDetailDetailIcon() {
    return SizedBox();
  }

  Widget _buildDetailButton() {
    return SizedBox();
  }
}
