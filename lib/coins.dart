import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'datacoin.dart';

class CoinsPrice extends StatefulWidget {

  @override
  _CoinsPriceState createState() => _CoinsPriceState();
}

class _CoinsPriceState extends State<CoinsPrice> {

  Column makesCoin(){
    List<Cards> cards=[];
    for(int i=0; i<coinList.length; i++){
      cards.add(
        Cards(coinImage: coinImage[i], coinPrice: coinPrices[i], coinName: coinName[i], coinASC: coinList[i])
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cards,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(

      children: [
        Container(
          height: 40,
          color: Colors.deepPurple.shade700,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Name',style: TextStyle(color: Colors.white),), Text('Price',style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        Expanded(child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                makesCoin(),makesCoin(),makesCoin(),
              ],
            ),
          ),
        ))
      ],
    ));
  }
}


class Cards extends StatelessWidget {
  const Cards({required this.coinImage,  required this.coinPrice, required this.coinName, required this.coinASC});

  final String coinName;
  final String coinPrice;
  final String coinASC;
  final String coinImage;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red.withOpacity(0),
                  backgroundImage: NetworkImage('$coinImage'),
                ),
                SizedBox(width: 10,),
                Text('$coinName'),SizedBox(width: 10,),
                Text('$coinASC',style: TextStyle(color: Colors.grey.shade500),),
              ],
            ),

            Text('$coinPrice'),

          ],
        ),
      ),
    );
  }

}

