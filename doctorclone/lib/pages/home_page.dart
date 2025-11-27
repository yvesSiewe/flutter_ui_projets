import 'package:doctorclone/pages/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> imagesList =  [
    {
      'imagelink':'assets/images/doctor_girl4.jpeg',
      'name': 'Satella Eyenga',
      'specilalite': 'Medecin Generaliste',
      'price': '80 USD',
      'times': [
          '12:00 PM',
          '12:30 PM',
          '4:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_old.jpeg',
      'name': 'Frank',
      'specilalite': 'Medecin Bucodentaire',
      'price': '100 USD',
      'times': [
          '8:00 AM',
          '12:30 PM',
          '2:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_girl5.jpeg',
      'name': 'Erica Fouda',
      'specilalite': 'Medecin Pediatre',
      'price': '80 USD',
      'times': [
          '8:00 AM',
          '11:00 AM',
          '2:00 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_office.jpeg',
      'name': 'George Poid',
      'specilalite': 'Medecin Genicologue',
      'price': '90 USD',
      'times': [
          '9:00 AM',
          '1:00 PM',
          '4:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_boy.jpeg',
      'name': 'Yves Palier',
      'specilalite': 'Medecin Generaliste',
      'price': '100 USD',
      'times': [
          '12:00 PM',
          '12:30 PM',
          '4:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_boy2.jpeg',
      'name': 'Paul Emana',
      'specilalite': 'Chirugien',
      'price': '65 USD',
      'times': [
          '10:00 AM',
          '12:30 PM',
          '4:00 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_girl3.jpeg',
      'name': 'Ange Bessike',
      'specilalite': 'Dermathologue',
      'price': '80 USD',
      'times': [
          '12:00 PM',
          '12:30 PM',
          '4:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_girl4.jpeg',
      'name': 'Satella Eyenga',
      'specilalite': 'Medecin Generaliste',
      'price': '80 USD',
      'times': [
          '7:00 AM',
          '12:30 PM',
          '2:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_girl5.jpeg',
      'name': 'Yvana',
      'specilalite': 'Medecin Generaliste',
      'price': '70 USD',
      'times': [
          '12:00 PM',
          '12:30 PM',
          '4:20 PM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_old1.jpeg',
      'name': 'Styve Kamga',
      'specilalite': 'Medecin Generaliste',
      'price': '90 USD',
      'times': [
          '7:00 AM',
          '10:30 AM',
          '15:00 AM'
        ]
    },
    {
      'imagelink':'assets/images/doctor_girl2.jpeg',
      'name': 'Merveille Olinga',
      'specilalite': 'Medecin Generaliste',
      'price': '70 USD',
      'times': [
          '12:00 PM',
          '12:30 PM',
          '4:20 PM'
        ]
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Consultations',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.chevron_right),
                )
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.mirror
                ),
                boxShadow: [
                  BoxShadow(
                    color: ThemeData().primaryColor,
                    blurRadius: 8.0,
                    offset: Offset(-4, 15),
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    padding: const EdgeInsets.all(10),
                    width: 70,
                    height: 70,

                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
              child: Column(
                children: imagesList.map((item) {
                  return Doctor(
                    name: item['name'], 
                    specialty: item['specilalite'] ,
                    imageUrl: item['imagelink'],
                    price: item['price'],
                    hours: item['times'],
                  );
                }).toList(),
              ),
            )
            // Add more widgets here as needed
          ],
        ),
      )
    ) ;
  }
}