import 'package:event_date_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/resouces/resources.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            centerTitle: true,
            title: CircleAvatar(
              backgroundImage: NetworkImage(
                R.images.circleAvatar,
              ),
            ),
            actions: const [
              Icon(
                Icons.circle,
                color: Colors.yellow,
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Text(
                      'Upcoming Event \nin October',
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),

                
                 
                
Divider(),
                //
                
              ],
            ),
          ),
floatingActionButton: FloatingActionButton(onPressed: null, backgroundColor: Colors.yellow, child: Icon(Icons.add)),
        ),
      ),
    );
  }
}

class _VerticalCard extends StatelessWidget {
  final EventModel model;
  final String date;
  final String title;
  final String image;
  const _VerticalCard({Key? key, required this.date, required this.model, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //
        SizedBox(
          width: context.screenWidth * .5,
          height: context.screenWidth * .5,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              //,
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    image.toString()??'',
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              //
              Container(
                margin: const EdgeInsets.only(
                  top: 16,
                  right: 16,
                ),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text('8 day left'),
              ),
            ],
          ),
        ),

        //
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Text(
            date??'Oct 4, 2022',
            style: GoogleFonts.quicksand().copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),

        //
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            left: 8,
          ),
          child: Text(
            title,
            style: GoogleFonts.quicksand().copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

class VerticalCardRow extends StatelessWidget {
  final EventModel model;
  final String date;
  final String subTitle;
  final String image;
  const VerticalCardRow({super.key, required this.date, required this.model, required this.subTitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    image.toString(),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            Column(children: [

        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Text(
            date??'Oct 4, 2022',
            style: GoogleFonts.quicksand().copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),

        //
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            left: 8,
          ),
          child: Text(
            model.title.toString()??'Title',
            style: GoogleFonts.quicksand().copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 2,
            left: 8,
          ),
          child: Text(
            subTitle??'SubTitle',
            style: GoogleFonts.quicksand().copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        ],),
      ],
    );
  }
}