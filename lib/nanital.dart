import 'package:flutter/material.dart';
import 'package:flutter_application_1/destination.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri _url = Uri.parse('https://www.holidify.com/places/bhimtal/');
final Uri _url1 = Uri.parse('https://www.holidify.com/places/nainital/the-mall-road-sightseeing-8037.html');
final Uri _url2 = Uri.parse('https://www.holidify.com/places/nainital/naina-devi-temple-sightseeing-8036.html');
final Uri _url3 = Uri.parse('https://www.holidify.com/places/nainital/snow-view-point-sightseeing-3010.html');
final Uri _url4 = Uri.parse('https://www.holidify.com/places/sattal/');
final Uri _url5 = Uri.parse('https://www.holidify.com/places/nainital/tiffin-top-dorothys-seat-sightseeing-3011.html');
final Uri _url6 = Uri.parse('https://www.holidify.com/places/nainital/high-altitude-zoo-sightseeing-122920.html');
final Uri _url7 = Uri.parse('https://www.holidify.com/places/nainital/pangot-sightseeing-3009.html');
final Uri _url8 = Uri.parse('https://www.holidify.com/places/nainital/neem-karoli-baba-ashram-sightseeing-3007.html');
final Uri _url9 = Uri.parse('https://www.holidify.com/places/nainital/eco-cave-gardens-sightseeing-3000.html');
final Uri _url10 = Uri.parse('https://www.holidify.com/pages/paragliding-in-nainital-3078.html');
final Uri _url11= Uri.parse('https://www.holidify.com/places/nainital/hanuman-garhi-sightseeing-3002.html');














void main() {
  runApp(const Detail2());
}
class Detail2 extends StatelessWidget {
  const Detail2({super.key});  
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
        title: Text("Nanital"),
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
                child: 
                Image.asset('assets/images/Bhimtal-Lake.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Bhimtal-Lake'),
              subtitle: Text('Bhimtal is a lake in the town of Bhimtal, near Nainital city in Nainital district of Kumaon, India with a masonry dam built in 1883 creating the storage facility.It is the largest lake of Nainital district, as well as Kumaon, which is known as the "Lake district of India".',maxLines: 7,
  overflow: TextOverflow.ellipsis,),

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
                child: Image.asset('assets/images/mallroad.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Mall road'),
              subtitle: Text('About The Mall Road, Nainital The Mall is a most popular name in Nainital city. A busiest road in day time, The Mall runs side by side of the Nainital Lake. Britishers constructed The Mall Road. ',maxLines: 7,
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
                child: Image.asset('assets/images/nainadevi.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('NainaDevi Temple'),
              subtitle: Text('About Naina Devi TempleA well known Shakti Peeths of Hindu religion, Naini Devi Temple is sacred place of great devotion in Nainital. Goddess Naini Devi is the diety of Naini Devi Temple and located at northern end of famous Nainital Lake. Goddess in this holy temple is represented by her two eyes.Maa',maxLines: 7,
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
                child: Image.asset('assets/images/snowviewpoint.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Snow Vew Point'),
              subtitle: Text('Snow View Point Snow View Point is one of the most visited places by tourists for watching majestic Himalayas from Nainital. Known as best view point in Nainital, Snow view point offers tourists an excellent views of snow capped mountains like Nanda Devi, Trishul and Nanda Kot.',maxLines: 7,
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
              child: Image.asset('assets/images/satttal.jpg', fit: BoxFit.fill),
            ),
             shape: Border(
        bottom: BorderSide(),
    ),
            title: Text('Satt-Tal'),
            subtitle: Text('Sattal or Sat Tal (Hindi for "seven lakes" is an interconnected group of seven freshwater lakes situated in the Lower Himalayan Range near Bhimtal, a town of the Nainital district in Uttarakhand, India. During the British Raj, the area had a tea plantation, one of four in the Kumaon area at that time.',maxLines: 7,
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
                child: Image.asset('assets/images/tiffintop.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Tiffin-Top'),
              subtitle: Text('A popular picnic spot in Nainital, Tiffin Top (also known as Dorothys Seat is located on Ayarpatta hill, offers a magnificent 360 degree view of the Nainital town and surrounding hills of kumaon region. Apart from a picnic spot amidst the calm and serene environment, Tiffin Top is a delight for photographers.',maxLines: 7,
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
                child: Image.asset('assets/images/nanitalzoo.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Nanital Zoo'),
              subtitle: Text('Nainital Zoo is one of the best attraction for wildlife lovers in Nainital. Officially named as Bharat Ratna Pt. Govind   Ballabh Pant High Altitude Zoo Nainital, this well maintained zoo is the single zoo in entire Uttarakhand state.Covering a small green area of 4.693 Hectares.',maxLines: 7,
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
                child: Image.asset('assets/images/pangot.jpeg',
                fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Kilbury and Pangot Wildlife and Bird Sanctuary'),
              subtitle: Text('Pangot is a small and scenic hamlet, which falls under the district administration of Nainital. The region consists of several creeks, where animals like Leopard, Civet, Goral and Deer reside. What makes this place popular is the impressive population of avian species',maxLines: 7,
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
                child: Image.asset('assets/images/kachidham1.jpeg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('KainchiDham'),
              subtitle: Text('Kainchi Dham is a Hanuman temple & Ashram which is established by a great saint Shri Neem Karoli Baba in 1960s. It is a holy temple surrounded by hills and trees and river flowing besides it. You can feel the great strengths and presence of Hanuman Ji in the Ashram.',maxLines: 7,
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
                child: Image.asset('assets/images/ecocaves.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Ecocaves Garden'),
              subtitle: Text('Eco Cave Gardens is a newly developed tourist spot in Nainital. It comprises several natural inter connected caves of different animals. Hanging gardens makes this place more attractive. A children educational tour is the best option to explore Eco Cave Gardens.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
  onTap: () async {
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
                child: Image.asset('assets/images/areial.jpg',
                    fit: BoxFit.fill),
              ),
               shape: Border(
        bottom: BorderSide(),
    ),
              title: Text('Aerial Ropeway'),
              subtitle: Text('About Aerial Ropeway Nainital Cable car or Aerial rope-way is a major attraction in Nainital, which draws hundres of tourists each day who wants to enjoy the breathtaking views of Naini Lake and complete Nainital Hill Station.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
              onTap: () async {
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
                child: Image.asset('assets/images/hanumangahri.jpg',
                    fit: BoxFit.fill),
              ),
              
              title: Text('Hanuman Garhi Mandir'),
              subtitle: Text('Hanuman Garhi is a religious centre and famous for its sun set view . One can go to Hanuman Garhi by taxi, bus or even on foot from Nainital .It has a temple complex presiding deity being Lord Hanuman besides Ram and Shiva.',maxLines: 7,
  overflow: TextOverflow.ellipsis,),
  onTap: () async {
          if (!await launchUrl(_url11)) {
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
