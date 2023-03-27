import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {

  var advisoryList = ['Adv1','Adv2','Adv3','Adv4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: AppBar(
            title: const Text('HNU Advisory', style: TextStyle(color: Colors.black, fontSize:15.0 ),),
            backgroundColor: Colors.white,
          )

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 15,),
          CarouselSlider(
            items:[

              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/advisory_1.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/advisory_2.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/advisory_3.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/advisory_4.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),

            ],
            options: CarouselOptions(
                height: 280,
                enlargeCenterPage: true,
                autoPlay: true,
                viewportFraction: 0.8
            ),
          ),
          const SizedBox(height: 30,),
          CarouselSlider(
            items:[

              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/theWord_1.20.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/theWordCover.png'),
                      fit: BoxFit.cover,
                    )
                ),
              )
            ],
            options: CarouselOptions(
                height: 280,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlay: true,
                viewportFraction: 0.8
            ),
          ),
          const SizedBox(height: 30,),
          CarouselSlider(
            items:[

              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/theWord_1.20.jpg'),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/theWordCover.png'),
                      fit: BoxFit.cover,
                    )
                ),
              )
            ],
            options: CarouselOptions(
                height: 280,
                enlargeCenterPage: true,
                aspectRatio: 16/9,
                autoPlay: true,
                viewportFraction: 0.8
            ),
          ),

        ],
      ),
    );

  }
}
