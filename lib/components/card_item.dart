part of 'components.dart';

class CardItem extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final int rate;
  const CardItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.genre,
      required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(image),
            ),
          ),
          Spacer(),
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D0846))),
                  Text(genre,
                      style: TextStyle(fontSize: 16, color: Color(0xFF929292))),
                  SizedBox(
                    height: 18,
                  ),
                  Rating(rate: rate)
                ],
              ))
        ],
      ),
    );
  }
}
