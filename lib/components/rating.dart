part of 'components.dart';

class Rating extends StatelessWidget {
  final int rate;
  const Rating({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 5 - rate;

    final children = <Widget>[];
    for (var i = 0; i < rate; i++) {
      children.add(new Icon(
        Icons.star,
        color: Colors.amber,
      ));
    }
    for (var i = 0; i < count; i++) {
      children.add(new Icon(
        Icons.star_border,
        color: Colors.amber,
      ));
    }
    return new Row(
      children: children,
    );
  }
}
