import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final avatar = [
    {'image': 'assets/images/avatar1.jpg'},
    {'image': 'assets/images/girl.png'},
    {'image': 'assets/images/avatar3.jpg'},
    {'image': 'assets/images/avatar.jpg'},
    {'image': 'assets/images/avatar4.jpg'},
    {'image': 'assets/images/man.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,

            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/avatar.jpg'),
                ),
                SizedBox(width: 10),

                Text('Hello Budiarti'),
              ],
            ),
          ),

          SizedBox(height: 10),
          //section Wallet Ballance
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Wallet Balance'),
                      Text(
                        '\$ 25,500.20',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ),
          // section card
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 200,

            child: Image.asset('assets/images/credit-card.png'),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Icon(Icons.drive_folder_upload_outlined),
                      ),
                      Text('Top Up'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Icon(Icons.swap_horiz_outlined),
                      ),
                      Text('Swap'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Icon(Icons.currency_exchange_sharp),
                      ),
                      Text('Send'),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.brown[100],
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Icon(Icons.currency_exchange_outlined),
                      ),
                      Text('Request'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // section Quick Send to
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Quick send to',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 10),

          Container(
            padding: EdgeInsets.all(20),
            height: 100,

            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => Column(
                    children: [
                      Container(
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(avatar[index]['image'] as String),
                        ),
                      ),
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: avatar.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.receipt_long_rounded),
          ),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.credit_card_outlined),
          ),
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
