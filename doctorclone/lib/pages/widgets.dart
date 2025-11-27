import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctor extends StatelessWidget {
  final String name;
  final String specialty;
  final String imageUrl;
  final String price;
  final List<String> hours;

  const Doctor({
    super.key,
    required this.name,
    required this.specialty,
    required this.imageUrl,
    required this.price,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Dr. $name ',
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ), 
                      ),
                      children: [
                        // TextSpan(
                        //   text: ' 4.5',
                        //   style: GoogleFonts.openSans(
                        //     textStyle: const TextStyle(
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w500
                        //     ),
                          
                        //   )
                        // ),
                        WidgetSpan(child: Icon(Icons.star, color: Colors.yellow,)),
                        TextSpan(
                          text: '\n$specialty',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  IconButton(onPressed: (){}, 
                  icon: Icon(FontAwesomeIcons.heart)
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Available appointments for today',
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  )
                ),
              ),
              Text(
                price,
                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: hours.map((items){
                return Hours(hours: items);
              }
            ).toList(),
          )
        ],
      ),
    );
  }
}


class Hours extends StatelessWidget{
  final String hours;
  const Hours({
    super.key,
    required this.hours
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 114, 149, 165),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          hours,
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white
            )
          ),
        ),
      ),
    );
  }
}