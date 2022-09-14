part of 'screens.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(top: 28, left: 24, right: 24),
                child: Expanded(
                  flex: 2,
                  child: Container(
                      padding:
                          const EdgeInsets.only(top: 4, bottom: 4, left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            size: 38,
                            color: Color(0xFF0D0846),
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 18),
                              height: 36,
                              child: const TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Search")),
                            ),
                          )
                        ],
                      )),
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
                        const SizedBox(
                          height: 32,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Row(
                                  children: const [
                                    Text('Search Result ',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0D0846))),
                                    Text('(3)',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF0D0846))),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                children: [
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
                                  CardItem(
                                      image:
                                          'https://cdns.klimg.com/resized/660x/g/poster_karakter_the_dark_knight_rises/p/the_dark_knight_rises-20120523-001-rita.jpg',
                                      title: 'The Dark Knight',
                                      genre: 'Action',
                                      rate: 5),
                                  SizedBox(
                                    height: 72,
                                  ),
                                  Container(
                                    height: 52,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 72),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(24),
                                      color: Color(0xFF0D0846),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Suggest Movie',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    )),
                                  )
                                ],
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
