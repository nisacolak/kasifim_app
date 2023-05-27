import 'package:flutter/material.dart';
import 'package:kasifim_app/gen/assets.gen.dart';

import 'package:kasifim_app/gen/colors.gen.dart';
import 'package:kasifim_app/network/models/restaurant.dart';

class DirectionsTab extends StatelessWidget {
  final Restaurant? sampleModel;
  const DirectionsTab({
    Key? key,
    this.sampleModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: addressBox(),
          ),
        ],
      ),
    );
  }
}

class addressBox extends StatelessWidget {
  const addressBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * .10,
              decoration: BoxDecoration(
                // color: ColorName.lightGrey,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorName.orange),
              ),
              child: Column(
                children: const [
                  _addressRow(),
                  _phoneRow(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _map(),
          ],
        ),
      ),
    );
  }
}

class _map extends StatelessWidget {
  const _map({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(
                Assets.images.viyanaAddress.path,
              ),
              fit: BoxFit.cover)),
    );
  }
}

class _phoneRow extends StatelessWidget {
  const _phoneRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.phone_sharp,
          color: ColorName.orange,
          size: 20,
        ),
        Text('  0552 416 18 00'),
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .18,
                ),
                Icon(
                  Icons.schedule_sharp,
                  size: 20,
                  color: ColorName.orange,
                ),
                Text(' 09.00 - 23.00 ')
              ],
            )
          ],
        )
      ],
    );
  }
}

class _addressRow extends StatelessWidget {
  const _addressRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7, right: 3, left: 0, bottom: 6),
      child: Row(children: [
        Icon(
          Icons.location_on,
          color: ColorName.orange,
          size: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .02,
        ),
        Text(
          'Bereketzade, Büyük Hendek Cd.No:19/A, \n34421 Beyoğlu/İstanbul',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ]),
    );
  }
}
