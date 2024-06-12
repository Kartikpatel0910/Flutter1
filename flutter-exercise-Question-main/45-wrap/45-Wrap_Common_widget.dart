class wrat extends StatelessWidget {
  const wrat(
      {super.key,
      required this.space,
      required this.runspace,
      required this.alignment,
      required this.direction,
      required this.hight,
      required this.width, 
      required this.color});

  final double space;
  final double runspace;
  final alignment;
  final direction;
  final double hight;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: space,
        runSpacing: runspace,
        children: [
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
          Container(
            height: hight,
            width: width,
            color: color,
          ),
        ],
      ),
    );
  }
}
