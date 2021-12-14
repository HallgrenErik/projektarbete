import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'album_lista.dart';
import 'mina_reviews.dart';

class ArtistView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Text("ARTIST"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 30,
            ),
            Image.network(
              'https://www.theaudiodb.com/images/media/artist/logo/uutrxt1520332371.png',
            ),
            Container(height: 10),
            const Text("AC/DC",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            const Text("Discography", textAlign: TextAlign.left),
            const ListTile(
              title: Text("Albumtitel"),
              subtitle: Text("1988"),
            ),
            const ListTile(
              title: Text("Albumtitel"),
              subtitle: Text("1992"),
            ),
            const ListTile(
              title: Text("Albumtitel"),
              subtitle: Text("1995"),
            ),
            const ListTile(
              title: Text("Albumtitel"),
              subtitle: Text("1998"),
            ),
            Container(
              child: info(),
              margin: const EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }

  Widget info() {
    return Column(
      children: [
        Text(
            "AC/DC are an Australian hard rock band, formed in November 1973 by brothers Malcolm and Angus Young, who continued as members until Malcolm's illness and departure in 2014. Commonly referred to as a hard rock or blues rock band, they are also considered pioneers of heavy metal and are sometimes classified as such, though they have always dubbed their music as simply \"rock and roll\".\nAC/DC underwent several line-up changes before releasing their first album, High Voltage, on 17 February 1975; Malcolm and Angus were the only original members left in the band. Membership subsequently stabilised until bassist Mark Evans was replaced by Cliff Williams in 1977 for the album Powerage. Within months of recording the album Highway to Hell, lead singer and co-songwriter Bon Scott died on 19 February 1980 after a night of heavy alcohol consumption. The group considered disbanding, but buoyed by support from Scott's parents, decided to continue and set about finding a new vocalist. Ex-Geordie singer Brian Johnson was auditioned and selected to replace Scott. Later that year, the band released the new album, Back in Black, which was made as a tribute to Bon Scott. The album launched them to new heights of success and became their all-time best-seller.\n"),
        Image.network(
          'https://www.theaudiodb.com/images/media/artist/thumb/rryqtt1367245371.jpg',
        ),
        Text(
            "\nThe band's next album, For Those About to Rock We Salute You, was their first album to reach number one in the United States. AC/DC declined in popularity soon after drummer Phil Rudd was fired in 1983 and was replaced by ex-A II Z drummer Simon Wright, who left to join Dio in 1989. The band experienced a resurgence in the early 1990s with the release of The Razors Edge. Phil Rudd returned in 1994 after Chris Slade, who was with the band from 1989 to 1994, was asked to leave in favour of him, and contributed to the band's 1995 album Ballbreaker. Stiff Upper Lip was released in 2000 and was well received by critics. The band's studio album, Black Ice, was released on 20 October 2008 and was the second-highest-selling album of that year. It was their biggest hit on the charts since For Those About to Rock, eventually reaching No.1 on all charts worldwide. The band's line-up remained the same\u2014their longest unchanged line-up\u2014until 2014 with Malcolm Young's retirement and Rudd's legal troubles.\nAC/DC have sold more than 200 million records worldwide, including 71.5 million albums in the United States alone, making them the tenth-best-selling band in the United States and one of the world's best-selling bands of all time. Back in Black has sold an estimated 50 million units worldwide, making it the fifth-highest-selling album by any artist."),
      ],
    );
  }
}
