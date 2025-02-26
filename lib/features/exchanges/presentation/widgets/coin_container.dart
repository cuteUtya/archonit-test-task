import 'dart:math';

import 'package:achconit_task/features/exchanges/data/entity/coin_data.dart';
import 'package:flutter/material.dart';

class CoinContainer extends StatelessWidget {
  final CoinData coin;

  const CoinContainer({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    var random = Random();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: Color.fromARGB(
                255,
                random.nextInt(255),
                random.nextInt(255),
                random.nextInt(255),
              ),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          SizedBox(width: 16),
          Text(
            coin.symbol,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Text(
            '${coin.priceUsd?.toStringAsFixed(2)}\$',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
