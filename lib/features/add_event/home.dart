import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.search),
            centerTitle: true,
            title: const CircleAvatar(backgroundImage: NetworkImage('')),
            actions: const [
              Icon(
                Icons.circle,
                color: Colors.yellow,)
            ],
            ),
            body: ListView(
              children: [
                Row(
                  children: [
                    Text('Upcoming Event in October', style: GoogleFonts.quicksand(),),
          
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                            image: NetworkImage(''), // Image!
                          ),
                          ),
                        ),
                        TextButton(onPressed: null, child: Text('8 day left'),),
                      ],
                    ),
          Text('Oct 4, 2022', style: GoogleFonts.quicksand(),),
          Text('Tour of the Alps', style: GoogleFonts.quicksand(),),
          Row(
        children: [
        Row(children: [
          CircleAvatar(backgroundImage: NetworkImage(''),),
          Text('+25', style: GoogleFonts.quicksand(),),
          Text('Joined', style: GoogleFonts.quicksand(),),
],),
        ElevatedButton(onPressed: null, child: Text('View', style: GoogleFonts.quicksand(),),),
        ],
          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}
