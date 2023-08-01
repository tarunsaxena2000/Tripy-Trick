import 'package:flutter/material.dart';
import 'package:flutter_application_1/destination.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://www.thrillophilia.com/rishikesh-rafting');
final Uri _url1 = Uri.parse('https://www.holidify.com/places/rishikesh/triveni-ghat-sightseeing-3432.html');
final Uri _url2 = Uri.parse('https://www.holidify.com/places/rishikesh/neelkantha-mahadeva-temple-sightseeing-3429.html');
final Uri _url3 = Uri.parse('https://www.holidify.com/places/rishikesh/the-beatles-ashram-sightseeing-123918.html');
final Uri _url4 = Uri.parse('https://www.holidify.com/places/rishikesh/neer-garh-waterfall-sightseeing-123922.html');
final Uri _url5 = Uri.parse('https://www.holidify.com/places/rishikesh/omkarananda-ashram-sightseeing-122875.html');
final Uri _url6 = Uri.parse('https://www.holidify.com/places/rishikesh/geeta-bhawan-sightseeing-3426.html');
final Uri _url7 = Uri.parse('https://www.holidify.com/places/rishikesh/laxman-jhula-sightseeing-3428.html');
final Uri _url8 = Uri.parse('https://www.holidify.com/places/rishikesh/swami-dayananda-ashram-sightseeing-122880.html');
final Uri _url9 = Uri.parse('https://www.holidify.com/places/rishikesh/swarg-ashram-sightseeing-123923.html');
final Uri _url10 = Uri.parse('https://www.holidify.com/places/rishikesh/sivananda-ashram-sightseeing-3431.html');
final Uri _url11= Uri.parse('https://www.holidify.com/places/rishikesh/bharat-mandir-sightseeing-3425.html');
final Uri _url12= Uri.parse('https://www.holidify.com/places/rishikesh/laxman-jhula-sightseeing-3428.html');











void main() {
  runApp(const Detail1());
}
class Detail1 extends StatelessWidget {
  const Detail1({super.key});  
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
    return 
    Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () =>    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Destination())),
        ),
        title: Text("Rishikesh"),
        centerTitle: true,
      ),
      body:
    SingleChildScrollView(
      child:
          
       Card(
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
                child: Image.asset('assets/images/raf.jpg',
                    fit: BoxFit.fill),
                   
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('River Rafting'),
              subtitle: Text('Brahampuri Club House Rafting 9 kms, Grade: I ......The day rafting begins from Shivpuri. The stretch from Shivpuri to Rishikesh  of 16 kms and there are wild rapids like the Initiation   Roller Coaster, Return to the Sender, Double Trouble, Golf Course and Club House. Besides river rafting, you also can also try body surfing.',maxLines: 7,
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
                  minHeight: 260,
                  maxWidth: 104,
                  maxHeight: 264,
                ),
                child: Image.asset('assets/images/triveni.jpeg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Triveni Ghat'),
              subtitle: Text('Triveni Ghat is a sacred ghat in Rishikesh famous for the Ganga Aarti. Triveni words comes from join of two words Tri (three) and Veni (confluence) meaning confluence of three. It is one of the biggest and must visit ghat of Rishikesh known for its auspicious and spiritual aroma.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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
                child: Image.asset('assets/images/neelkanth.jpg',
                    fit: BoxFit.fill),
                     ),
                    
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Neelkanth mahadev Temple'),
              subtitle: Text('Neelkanth Mahadev Temple is famous for its 6-ft-high monolith shivling, which is made out of a single black kasoti stone. Residing in the complex of the Kumbhalgarh Fort, the temple was built in 1458 and was renovated by Rana Sanga (a Rajput king in the 16th century), who was a great worshipper of Lord Shiva.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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
                child: Image.asset('assets/images/beatasharam.jpg',
                    fit: BoxFit.fill),
              ),
                shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Beatles Asharam'),
              subtitle: Text('Beatles Ashram (बीटल्स आश्रम), also known as Chaurasi Kutia (चौरासी कुटिया), is an ashram close to the north Indian city of Rishikesh in the state of Uttarakhand. It is located on the eastern bank of the Ganges river, opposite the Muni Ki Reti area of Rishikesh, in the foothills of the Himalayas.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
             
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
              child: Image.asset('assets/images/neergarhfall.jpg', fit: BoxFit.fill),
            ),
             shape: Border(
        bottom: BorderSide(),
    ),
            title: Text('Neergarh Waterfall'),
            subtitle: Text('Neer Garh Waterfall Overview Hidden inside the woods of the beautiful hill town Rishikesh, Neer Garh Waterfall are the real beauty to witness. Amalgam of three stunning waterfalls combine to make this one mighty waterfall, which falls off a cliff as high as 25 feet',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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

                child: Image.asset('assets/images/omkaranandasharam.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Omkarananda Ashram Himalayas'),
              subtitle: Text('Omkarananda Ashram Himalayas is located in the most sacred place near the bank of the holy river Ganga and in the proximity of both Rishikesh, the ancient place of pilgrimage, the neighbouring Sivanandanagar and the famous Lakshman Jhula.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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
                child: Image.asset('assets/images/gitabhawan.JPG',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Gita Bhawan'),
              subtitle: Text('Geeta Bhawan is a large complex located at the banks of holy river Ganaga in Swargashram, Rishikesh. Huge complex of Geeta Bhawan has several discourse halls and over 1000 rooms for the comfortable stay of devotees free of cost.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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
                child: Image.asset('assets/images/lakshmanjhula.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Lakshman Jhula'),
              subtitle: Text('Lakshman Jhula is a suspension bridge across the river Ganges.This is very famous and older bridge on river ganga is closed from 2020. This is very famous and very older bridge on river ganga. Lakshman jhula was build in the time of east india company kingdom',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
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
                child: Image.asset('assets/images/swamidayanandasharam.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Swami Dayananda Ashram, Sri Gangadhareswar Trust'),
              subtitle: Text('Swami Dayananda Ashram, Rishikesh, was established during the 1960s by Swami Dayananda Saraswati, who is a globally renowned teacher of Vedanta and foremost...',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
              
              onTap: () async {
          if (!await launchUrl(_url8)) {
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
                child: Image.asset('assets/images/swargasharam.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Swarg Ashram'),
              subtitle: Text('Swargashram provides an abode to the Saints in the premises of the ashram for pursuing the path of religious awakening through Dhyan, Bhajan and Meditation. The ashram provides all kinds of assistance to the Saints living in the ashram',maxLines: 7,
  overflow: TextOverflow.ellipsis,), onTap: () async {
          if (!await launchUrl(_url9)) {
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
                child: Image.asset('assets/images/divinelifesociety.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('The Divine Life Society (Sivananda Ashram)'),
              subtitle: Text('The Divine Life Society (DLS) is a Hindu spiritual organization and an ashram, founded by Swami Sivananda Saraswati in 1936, at Muni Ki Reti, Rishikesh, India. Today Divine Life Society has branches around the world, with the headquarters situated in Rishikesh.',maxLines: 7,
  overflow: TextOverflow.ellipsis,), onTap: () async {
          if (!await launchUrl(_url10)) {
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
                child: Image.asset('assets/images/bharatmandir.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Bharat Mandir'),
              subtitle: Text('Bharat Mandir is one of the oldest temples of Rishikesh. According to the ancient records of Kedarkhand, the main structure of the temple was built by Adi Guru Shankaracharya in 8th century. This temple is said to be devastated in 1398 AD by the attack of Timur.',maxLines: 7,
  overflow: TextOverflow.ellipsis,), onTap: () async {
          if (!await launchUrl(_url11)) {
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
                child: Image.asset('assets/images/lakshmanjhula.jpg',
                    fit: BoxFit.fill),
              ),
              
              title: Text('Lakshman Jhula'),
              subtitle: Text('Lakshman Jhula is a suspension bridge across the river Ganges.This is very famous and older bridge on river ganga is closed from 2020. This is very famous and very older bridge on river ganga. Lakshman jhula was build in the time of east india company kingdom',maxLines: 7,
  overflow: TextOverflow.ellipsis,), onTap: () async {
          if (!await launchUrl(_url12)) {
            throw Exception('Could not launch $_url');
          }
        },
             
            ),

          ],
        ),
      ),)
    );
  }
}