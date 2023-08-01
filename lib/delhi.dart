import 'package:flutter/material.dart';
import 'package:flutter_application_1/destination.dart';
import 'package:url_launcher/url_launcher.dart';





final Uri _url = Uri.parse('https://www.holidify.com/places/delhi/swaminarayan-akshardham-temple-sightseeing-1732.html');
final Uri _url23 = Uri.parse('https://www.holidify.com/places/delhi/chandni-chowk-sightseeing-1713.html');
final Uri _url1 = Uri.parse('https://www.holidify.com/places/delhi/india-gate-sightseeing-1718.html');
final Uri _url2 = Uri.parse('https://www.holidify.com/places/delhi/qutub-minar-and-complex-sightseeing-1727.html');
final Uri _url3 = Uri.parse('https://www.holidify.com/places/delhi/red-fort-sightseeing-1731.html');
final Uri _url4 = Uri.parse('https://www.holidify.com/places/delhi/hauz-khas-village-sightseeing-6214.html');
final Uri _url5 = Uri.parse('https://www.holidify.com/places/delhi/gurudwara-bangla-sahib-sightseeing-1715.html');
final Uri _url6 = Uri.parse('https://www.holidify.com/places/delhi/humayuns-tomb-sightseeing-1717.html');
final Uri _url7 = Uri.parse('https://www.holidify.com/places/delhi/museum-of-illusions-sightseeing-1263615.html');
final Uri _url8 = Uri.parse('https://www.holidify.com/places/delhi/agrasen-ki-baoli-sightseeing-6224.html');
final Uri _url9 = Uri.parse('https://www.holidify.com/places/delhi/garden-of-five-senses-sightseeing-120848.html');
final Uri _url10= Uri.parse('https://www.holidify.com/places/delhi/lodhi-garden-sightseeing-1722.html');
final Uri _url11= Uri.parse('https://www.holidify.com/places/delhi/pradhanmantri-sangrahalaya-sightseeing-1266252.html');
final Uri _url12 = Uri.parse('https://www.holidify.com/places/delhi/jantar-mantar-sightseeing-1721.html');
final Uri _url13 = Uri.parse('https://www.holidify.com/places/delhi/hazrat-nizamuddin-nizamuddins-shrine-sightseeing-1716.html');
final Uri _url14= Uri.parse('https://www.holidify.com/places/delhi/national-zoological-park-sightseeing-1724.html');
final Uri _url15 = Uri.parse('https://www.holidify.com/places/delhi/rashtrapati-bhavan-sightseeing-1730.html');
final Uri _url16 = Uri.parse('https://www.holidify.com/places/delhi/jama-masjid-sightseeing-1720.html');
final Uri _url17 = Uri.parse('https://www.holidify.com/places/delhi/sarojini-market-sightseeing-120855.html');
final Uri _url18 = Uri.parse('https://www.holidify.com/places/delhi/connaught-place-sightseeing-1714.html');
final Uri _url19 = Uri.parse('https://www.holidify.com/places/delhi/khan-market-sightseeing-6215.html');
final Uri _url20 = Uri.parse('https://www.holidify.com/places/delhi/rajghat-sightseeing-1728.html');








void main() {
  runApp(const Detail());
}

class Detail extends StatelessWidget {
  const Detail({super.key});
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
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 255, 255, 255)),
          onPressed: () =>    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Destination())),
        ),
        title: Text("Delhi"),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(6),
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
                    child: Image.asset('assets/images/Akshardham.jpg',
                        fit: BoxFit.fill),
                  ),
                  
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Akshardham'),
                  subtitle: Text(
                    'An epitome of Indian culture, spirituality, and architecture, Akshardham Temple is a famous Hindu temple and a spiritual-cultural complex. Also known as Swaminarayan Akshardham.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),

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
                      child: Image.asset('assets/images/Chandani.jpg',
                          fit: BoxFit.fill),
                    ),
                    shape: Border(
                      bottom: BorderSide(),
                    ),
                    title: Text('Chandani Chowk'),
                    subtitle: Text(
                      'One of the oldest markets in Old Delhi,Chandni Chowk is Old Delhi main thoroughfare which is a chaotic wholesale market lined by hawkers and porters offering full medieval bazaar experience.',
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),
                      onTap: () async {
          if (!await launchUrl(_url23)) {
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
                        Image.asset('assets/images/IG.jpg', fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('India Gate'),
                  subtitle: Text(
                    'The All India War Memorial, popularly known as the India Gate, is located along the Rajpath in New Delhi. The imposing structure of India Gate is an awe-inspiring sight and is often compared to the Arch de Triomphe in France, the Gateway of India in Mumbai and the Arch of Constantine in Rome.',
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
                    child: Image.asset('assets/images/Qutub Minar.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Qutub Minar'),
                  subtitle: Text(
                    'Qutub Minar is a minaret or a victory tower located in Qutub complex, a UNESCO World Heritage Site in Delhi Mehrauli area. With the height of 72.5 metres 238 ft, Qutub Minar is the second tallest monument of Delhi. Its construction was started in 1192 by Qutb Ud-Din-Aibak.',
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
                    child: Image.asset('assets/images/Redfort.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Red Fort (Lal Quila)'),
                  subtitle: Text(
                    'Lal Quila, Delhi The Red Fort is a historical fortification in the old Delhi area. Shah Jahan constructed it in the year 1639 as a result of a capital shift from Agra to Delhi. Used as the main residence of the emperors of the Mughal dynasty.',
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
                    child: Image.asset('assets/images/hauzkhas.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Hauzkhas'),
                  subtitle: Text(
                    'An affluent neighbourhood in South Delhi, Hauz Khas has been well known since medieval times. Hauz Khas Village retains the old charm of the place with remnants of Islamic architecture roughly coloured by splotches of urbane refurbished upmarket.',
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
                    child: Image.asset('assets/images/banglashib.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Gurudwara Sri Bangla Sahib'),
                  subtitle: Text(
                    'Gurudwara Bangla Sahib is one of the most prominent Sikh gurdwaras, or Sikh house of worship, in Delhi, India, and known for its association with the eighth Sikh Guru.',
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
                    child: Image.asset('assets/images/humayu.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Humayun’s Tomb'),
                  subtitle: Text(
                    'Humayun tomb is the tomb of Humayun in Delhi, India. The tomb was commissioned by Humayun first wife and chief consort, Empress Bega Begum under her patronage in 1558.',
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
                    child: Image.asset('assets/images/museum.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Museum of Illusions'),
                  subtitle: Text(
                    'Now you can with this one-of-a kind museum in Delhi. The Museum of Illusions is based on principles from Science, Math, Psychology - making learning more engaging! With over 50 interactive exhibits that range from mind bending illusion.',
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
                    child: Image.asset('assets/images/agarsen.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Agrasen ki Baoli'),
                  subtitle: Text(
                    'Agrasen Ki Baoli is a 60-meter long and 15-meter wide historical stepwell in New Delhi, India. Located on Hailey Road, near Connaught Place, Jantar Mantar.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
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
                    child: Image.asset('assets/images/fivesenses.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('The Garden of Five Senses'),
                  subtitle: Text(
                    'The Garden of Five Senses is a park in Delhi, India. Spread over 20 acres, the park is located in Saidul Ajaib village, opposite Saket, near the Mehrauli heritage area.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
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
                    child: Image.asset('assets/images/lodhigarden.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Lodhi Garden'),
                  subtitle: Text(
                    'Lodi Gardens is a city park situated in New Delhi, India. Spread over 90 acres, it contains Mohammed Shah Tomb, the Tomb of Sikandar Lodi, the Shisha Gumbad and the Bara Gumbad.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
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
                    child: Image.asset('assets/images/pradhanmantri.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Pradhanmantri Sangrahalaya'),
                  subtitle: Text(
                    'Pradhanmantri Sangrahalaya is a museum built as a tribute to every Prime Minister of India since Independence, and a narrative record of how each one has contributed to the development of the nation.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
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
                    child: Image.asset('assets/images/jantarmantar.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Jantar Mantar'),
                  subtitle: Text(
                    'antar Mantar is located in the modern city of New Delhi. "Jantar Mantar" means "instruments for measuring the harmony of the heavens". It consists of 13 architectural astronomy instruments',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url12)) {
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
                    child: Image.asset('assets/images/nizamuddin.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Dargah Nizamuddin Aulia'),
                  subtitle: Text(
                    'Nizamuddin Dargah is the dargah of the Sufi saint Khwaja Nizamuddin Auliya. Situated in the Nizamuddin West area of Delhi.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url13)) {
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
                    child: Image.asset('assets/images/delhizoo.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Delhi Zoo'),
                  subtitle: Text(
                    'A zoo is a place where animals live in captivity and are put on display for people to view. The word “zoo” is short for “zoological park".',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url14)) {
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
                    child: Image.asset('assets/images/rashtrapati.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Rashtrapati Bhavan'),
                  subtitle: Text(
                    'The Rashtrapati Bhavan is the official residence of the President of India at the western end of Rajpath, Raisina Hill, New Delhi, India. It was formerly known as Viceroy House and constructed during the zenith of British Empire..',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url15)) {
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
                        Image.asset('assets/images/jama.jpg', fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Jama Masjid'),
                  subtitle: Text(
                    'One of the largest mosques in India, Jama Masjid is situated in Old Delhi. Its construction was started in 1644 and completed by Mughal emperor Shah Jahan. Made of red sandstone and marble, this gorgeous mosque is also called Masjid-I-Jahanuma.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url16)) {
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
                    child: Image.asset('assets/images/sarojni.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Sarojni Market'),
                  subtitle: Text(
                    'Sarojini Nagar Market is a popular and bustling shopping destination located in South Delhi. The market is known for its trendy fashion apparel, accessories, footwear, and home decor items, all available at incredibly low prices.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url17)) {
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
                    child: Image.asset('assets/images/connaught.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Connaught Place'),
                  subtitle: Text(
                    'Connaught Place is a frenetic business and financial hub, centered on a ring of colonnaded Georgian-style buildings with global chain stores, vintage cinemas, bars and Indian restaurants.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url18)) {
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
                    child: Image.asset('assets/images/khanmarket.jpg',
                        fit: BoxFit.fill),
                  ),
                  shape: Border(
                    bottom: BorderSide(),
                  ),
                  title: Text('Khan Market'),
                  subtitle: Text(
                    'one of the Delhi most expensive and high-end market, this place was once originally allotted to the immigrants from the North-West Frontier Province as seed land after the partition of India. Established in 1951, the double-storey U-shaped market had 154 shops.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url19)) {
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
                    child: Image.asset('assets/images/rajghat.jpg',
                        fit: BoxFit.fill),
                  ),
                  title: Text('Raj Ghat'),
                  subtitle: Text(
                    'Raj Ghat is a memorial dedicated to Mahatma Gandhi in Delhi, India. Originally it was the name of a historic ghat of Old Delhi. Close to it, and east of Daryaganj was Raj Ghat Gate of the walled city.',
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                    onTap: () async {
          if (!await launchUrl(_url20)) {
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
