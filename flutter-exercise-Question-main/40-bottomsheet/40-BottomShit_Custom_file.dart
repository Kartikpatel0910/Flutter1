class bsdt extends StatelessWidget {
  const bsdt({
    super.key,
    required this.btnName,
    required this.bgColor,
    this.elevation,
    required this.onpressed,
    required this.closebtn,
    required this.hight, 
    required this.onback,
  });

  final btnName;
  final elevation;
  final Color bgColor;
  final VoidCallback onpressed;
  final VoidCallback onback;
  final String closebtn;
  final double hight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            onpressed();
            {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: hight,
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              onback();
                            },
                            child: Text(closebtn)),
                      ),
                    );
                  });
            }
          },
          child: Text(btnName),
          style: ElevatedButton.styleFrom(side: BorderSide(color: bgColor)),
        ),
      ),
    );
  }
}
