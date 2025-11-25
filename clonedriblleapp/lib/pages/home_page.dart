import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Good morning, Terry\n',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Welcome to Neobank',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_add_sharp),
              ),
            ],
          ),

          // MAIN CONTENT SCROLLABLE
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // CARD BALANCE
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Your balance\n',
                                style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                                children: const [
                                  TextSpan(
                                    text: '\$3,200.00',
                                    style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_sharp),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/addmoney');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text('Add money'),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // YOUR CARDS TITLE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your cards',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: const Color.fromARGB(255, 221, 218, 218),
                          foregroundColor: Colors.black87,
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.add),
                            Text('New card'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // CARD LIST (HORIZONTAL SCROLL RECOMMANDÉ)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        bankCard(
                          cardType: "VISA",
                          cardNumber: "4568 9876 2345 1123",
                          holderName: "TERRY JOHN",
                          expireDate: "12/28",
                        ),
                        bankCard(
                          cardType: "Mastercard",
                          cardNumber: "5521 8732 9044 7788",
                          holderName: "TERRY JOHN",
                          expireDate: "09/27",
                        ),
                      ]
                    )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


Widget bankCard({
  required String cardType,
  required String cardNumber,
  required String holderName,
  required String expireDate,
}) {
  return Container(
    padding: const EdgeInsets.all(20),
    margin: const EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF141E30),
          Color(0xFF243B55),
        ],
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// First row with card type + wave icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardType,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            /// Contactless icon
            const Icon(
              Icons.wifi_tethering,
              color: Colors.white70,
              size: 28,
            )
          ],
        ),

        /// CHIP + CARD NUMBER
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Chip icon
            Container(
              width: 45,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.amber.shade300,
              ),
            ),
            const SizedBox(height: 15),

            // Card number
            Text(
              cardNumber,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                letterSpacing: 3,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        /// Holder name + expire date
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "CARD HOLDER",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 10,
                  ),
                ),
                Text(
                  holderName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            // Expire date
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "EXPIRES",
                  style: TextStyle(
                    color: Colors.white38,
                    fontSize: 10,
                  ),
                ),
                Text(
                  expireDate,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
