import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  String font = 'Lato';
  setFont(String fn) {
    setState(() {
      font = fn;
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THAI FONT VIEWER'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('แมวมีค่า..ค่าใช้จ่าย',
                            style: GoogleFonts.getFont(
                              (font),
                              textStyle: Theme.of(context).textTheme.bodyText1,
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              shadows: [
                                Shadow(
                                    color: Colors.white,
                                    offset: Offset(10, 10),
                                    blurRadius: 5),

                              ],
                            )

                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Font : $font',
                        style: GoogleFonts.barlowCondensed(
                          textStyle: Theme.of(context).textTheme.bodyText2,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                            elevation: 5.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setFont('Lato');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                      ),
                                      child: Text('Lato',
                                          style:
                                              GoogleFonts.lato(fontSize: 20.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setFont('Mali');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                      ),
                                      child: Text('Kanit',
                                          style: GoogleFonts.kanit(
                                              fontSize: 20.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed:  () {
                                        setFont('Mitr');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                      ),
                                      child: Text('Mitr',
                                          style:
                                              GoogleFonts.mitr(fontSize: 20.0)),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed:  (){
                                        setFont('Mali');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                      ),
                                      child: Text('Mali',
                                          style:
                                              GoogleFonts.mali(fontSize: 20.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setFont('Itim');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                      ),
                                      child: Text('Itim',
                                          style:
                                              GoogleFonts.itim(fontSize: 20.0)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),

                ],
              )),
        ),
      ),
    );
  }
}
