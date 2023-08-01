import 'package:flutter/material.dart';
import 'package:flutter_application_1/destination.dart';
import 'package:url_launcher/url_launcher.dart';




final Uri _url = Uri.parse('https://www.holidify.com/places/srinagar/char-chinar-sightseeing-3643.html');
final Uri _url1 = Uri.parse('https://www.holidify.com/places/amarnath/amarnath-cave-sightseeing-4046.html');
final Uri _url2 = Uri.parse('https://www.holidify.com/places/srinagar/floating-vegetable-market-sightseeing-1254270.html');
final Uri _url3 = Uri.parse('https://www.holidify.com/hotel-collections/house-boats-in-srinagar');
final Uri _url4 = Uri.parse('https://www.holidify.com/places/srinagar/shankaracharya-temple-sightseeing-3659.html');
final Uri _url5 = Uri.parse('https://www.holidify.com/places/anantnag/lal-chowk-sightseeing-4086.html');
final Uri _url6 = Uri.parse('https://www.holidify.com/places/srinagar/nishat-bagh-sightseeing-3656.html');
final Uri _url7 = Uri.parse('https://www.holidify.com/places/jammu-and-kashmir/nigeen-lake-sightseeing-1263546.html');
final Uri _url8 = Uri.parse('https://www.holidify.com/places/srinagar/dal-lake-sightseeing-3648.html');

void main() {
  runApp(const Detail3());
}

class Detail3 extends StatelessWidget {
  const Detail3({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: const Color.fromARGB(255, 255, 255, 255)),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Destination())),
          ),
          title: Text("Srinagar"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/Char Chinar.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Char Chinar'),
                  subtitle: Text(
                      'Char Chinar is an island in the Dal Lake of Srinagar, surrounded by the Chinar trees on all four sides of it. Also known as Char Chinari (char chinari means four sides) and Rupa Lank, it was constructed by Murad Baksh, the brother of Mughal emperor Aurangzeb.',
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis),
                     
     onTap: () async {
          if (!await launchUrl(_url)) {
            throw Exception('Could not launch $_url');
          }
        },

                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 100,
                      maxWidth: 100,
                      maxHeight: 100,
                    ),
                    child: Image.asset('assets/images/Amarnath.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Amarnath cave'),
                  subtitle: Text(
                    'Located in Jammu and Kashmir, the Amarnath Cave is a Hindu Shrine and is visited by lakhs of people every year. It is located at an altitude of 3,888 m. The Amarnath falls into the categories of the most famous Hindu Shrines. Lakhs and Thousands of devotees make a pilgrimage to the cave during summers.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url1)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child:
                        Image.asset('assets/images/FVM.jpg', fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Floating Vegitable Market'),
                  subtitle: Text(
                    'Srinagar is also popular for its floating vegetable markets where vegetable and fruits are sold around in the waters on the Shikara. More than a sell-purchase transaction, it is an interesting place to visit for sightseeing. One of the most unique things to do in Srinagar, these markets are run at the corner of the Dal Lake and besides the regular traders and buyers.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url2)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/Houseboatt.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Houseboat'),
                  subtitle: Text(
                    'Staying in a houseboat amidst pristine waters of the Dal Lake, is one of the most essential things to do in Srinagar. Made in wood and adorned in a typical Kashmir style decor, the houseboats are a perfect way to experience the quintessential local life in the luxurious way.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url3)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child:
                        Image.asset('assets/images/ST.jpg', fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Shankracharya Temple'),
                  subtitle: Text(
                    'The Shankaracharya Temple in Srinagar, located on top of the Shankaracharya Hill, is dedicated to Lord Shiva and is one of the oldest shrines in Kashmir. Also known as Jyesteshwara Temple, the temple is named after the great philosopher Shankaracharya who is believed to have visited Srinagar about ten centuries ago.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url4)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/Lal chowk.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Lal chowk'),
                  subtitle: Text(
                    'The historic and strategic importance of Lal Chowk has been ever present in the Indian history books since the struggle for freedom that the country overcame in 1947. Named after the much famed Red Square in Moscow, Russia, Lal Chowk translates to the same name.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url5)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/Nishad.png',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Nishat Bagh'),
                  subtitle: Text(
                    'The Nishat Bagh is a 12 terraced garden located near Srinagar famous Dal Lake. It is the second-largest Mughal garden in Kashmir after Shalimar Bagh. Popularly known as "Garden of Bliss", it has a splendid Mughal central water channel with several fountains, which is surrounded by tall Chinar trees.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),


                   onTap: () async {
          if (!await launchUrl(_url6)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/NIgene.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Nigeen Lake'),
                  subtitle: Text(
                    'Nigeen Lake is renowned for its pristine waters and stunning ambience. It is located next to Dal Lake but is much smaller in size. The lake gets its name from the word nageena which means “the jewel in the ring”. It is one of the best places in the city to catch the sunrise and sunset thanks to the beautiful landscape and willow and poplar trees surrounding it.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),

                   onTap: () async {
          if (!await launchUrl(_url7)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 100,
                      minHeight: 260,
                      maxWidth: 104,
                      maxHeight: 264,
                    ),
                    child: Image.asset('assets/images/Dal Lake.jpg',
                        fit: BoxFit.fill),
                  ),
                  title: Text('Dal Lake'),
                  subtitle: Text(
                    'The Jewel of Srinagar, the Dal Lake is synonymous to a visit to Srinagar and is almost a visual definition of the town. Spread over 15 kms, it is the second-largest lake in Jammu & Kashmir. The mirror-like Dal Lake reflects the snow-dusted peaks of the Pir Panjal mountains while the colourful shikaras (gondolas) float around.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                   onTap: () async {
          if (!await launchUrl(_url8)) {
            throw Exception('Could not launch $_url');
          }
        },
                ),
              ],
            ),
          ),
        ));
  }
}
