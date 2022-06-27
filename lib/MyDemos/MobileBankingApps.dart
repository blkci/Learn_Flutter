import 'package:flutter/material.dart';

class MobileBankingInterface extends StatelessWidget {
  const MobileBankingInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text(
      'Payment',
      style: TextStyle(color: Colors.black),
    );
    const cardInfo = Text(
      '**** 4508',
      style: TextStyle(
        color: Colors.white,
      ),
    );
    var activeBalanceTitle = Text(
      'Active balance',
      style: TextStyle(color: Colors.white.withOpacity(0.5)),
    );
    const activeBalance = Text('\$ 20,578', style: TextStyle(fontSize: 32));
    const mainPadding = EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20);
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: title,
          leading: IconButton(color: Colors.black, onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: mainPadding,
          child: Stack(
            children: <Widget>[
              _BalanceCard(cardInfo: cardInfo, activeBalanceTitle: activeBalanceTitle, activeBalance: activeBalance),
              const Positioned(top: 6, right: 6, child: _CardIcon()),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 175),
                // ignore: prefer_const_literals_to_create_immutables
                child: const MyListView(),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 250),
                child: Divider(color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 280),
                child: Text('Recent', style: TextStyle(color: Color.fromARGB(255, 173, 109, 25))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: _peopleCard(
                    name: const Text('Muhammet Balıkçı', style: TextStyle(color: Colors.black)),
                    number: Text('Water: +905529514099', style: TextStyle(color: Colors.black.withOpacity(0.5)))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400),
                child: _peopleCard(
                    name: const Text('Muhammet Balıkçı', style: TextStyle(color: Colors.black)),
                    number: Text('Internet: +905529514099', style: TextStyle(color: Colors.black.withOpacity(0.5)))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: _peopleCard(
                    name: const Text('Muhammet Balıkçı', style: TextStyle(color: Colors.black)),
                    number: Text('Entertainment: +905529514099',
                        style: TextStyle(fontSize: 11, color: Colors.black.withOpacity(0.5)))),
              )
            ],
          ),
        ));
  }
}

class _peopleCard extends StatelessWidget {
  const _peopleCard({
    Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);
  final name;
  final number;
  @override
  Widget build(BuildContext context) {
    const buttonTitle = Text('PROCESS');
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 80,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(255, 184, 173, 173),
                    ),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.orange,
                child: Icon(Icons.egg_outlined, size: 65)),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  name,
                  SizedBox(
                    height: 20,
                  ),
                  number,
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: ElevatedButton(onPressed: () {}, child: buttonTitle),
            )
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _PriceCards(
            icon: Icon(Icons.electric_bolt),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Electricity',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.water),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Water',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.wifi),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Internet',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.headphones),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Entertainment',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.shopping_basket_outlined),
          ),
          const _SizedBoxHeight(),
          const Text(
            'E-commerce',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.health_and_safety),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Insurance',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.train),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Train Ticket',
            style: TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
      const _SizedBoxWidth(),
      Column(
        children: [
          const _PriceCards(
            icon: Icon(Icons.flight),
          ),
          const _SizedBoxHeight(),
          const Text(
            'Flight Ticket',
            style: const TextStyle(color: Color.fromARGB(255, 33, 58, 78), fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ]);
  }
}

class _SizedBoxWidth extends StatelessWidget {
  const _SizedBoxWidth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 12,
    );
  }
}

class _SizedBoxHeight extends StatelessWidget {
  const _SizedBoxHeight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 5,
    );
  }
}

class _PriceCards extends StatelessWidget {
  const _PriceCards({
    Key? key,
    required this.icon,
    //required this.nameRow,
  }) : super(key: key);
  final Icon icon;
  //final nameRow;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 75,
                child: IconButton(
                  onPressed: () {},
                  color: Colors.orange,
                  icon: icon,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BalanceCard extends StatelessWidget {
  const _BalanceCard({
    Key? key,
    required this.cardInfo,
    required this.activeBalanceTitle,
    required this.activeBalance,
  }) : super(key: key);

  final Text cardInfo;
  final Text activeBalanceTitle;
  final Text activeBalance;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: 150,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: cardInfo,
                ),
              ],
            ),
            ListTile(
              subtitle: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 200, top: 34),
                  child: Column(
                    children: [
                      activeBalanceTitle,
                      const SizedBox(
                        height: 15,
                      ),
                      activeBalance,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardIcon extends StatelessWidget {
  const _CardIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, iconSize: 40, icon: const Icon(Icons.credit_card));
  }
}
