part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget cardSlider(context, image, title, genre, rate) {
    return Container(
      width: MediaQuery.of(context).size.width - 64,
      margin: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(image),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D0846))),
                      Text(genre,
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xFF929292)))
                    ],
                  )),
              Expanded(flex: 4, child: Rating(rate: rate))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFDFDFE), Color(0xFFF3F4F8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28.0, left: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Moviez',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D0846)),
                          ),
                          Text(
                            'Watch much easier',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF929292)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchScreen()));
                        },
                        child: Container(
                            margin: const EdgeInsets.only(left: 18),
                            padding: const EdgeInsets.only(top: 4, bottom: 4),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  bottomLeft: Radius.circular(24)),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.search,
                                size: 38, color: Color(0xFF0D0846))),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          height: 240,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              cardSlider(
                                  context,
                                  'https://www.layar.id/wp-content/uploads/2019/05/1-john-wick-3-parabellum.jpg',
                                  'John Wick 4',
                                  'Action, Crime',
                                  5),
                              cardSlider(
                                  context,
                                  'https://static.republika.co.id/uploads/member/images/news/otvag7o392.jpg',
                                  'Nobody',
                                  'Action, Crime',
                                  4),
                              const SizedBox(
                                width: 24,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Text('From Disney',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF0D0846))),
                              ),
                              Expanded(
                                  child: Column(
                                children: const [
                                  CardItem(
                                      image:
                                          'https://lumiere-a.akamaihd.net/v1/images/mulan_characters_poster_en_liu_yifei_6c6c22a7.jpeg?region=0,0,608,900',
                                      title: 'Mulan Session',
                                      genre: 'History, War',
                                      rate: 3),
                                  CardItem(
                                      image:
                                          'https://image.tmdb.org/t/p/original/4s6fYhtYakH21LHtwBUEMEBuCZG.jpg',
                                      title: 'Beauty & Beast',
                                      genre: 'Sci-Fiction',
                                      rate: 3),
                                ],
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
