part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({@required this.selectedIndex, this.titles, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: titles
                    .map((e) => Padding(
                          padding: EdgeInsets.only(
                              left: defaultMargin, right: defaultMargin),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (onTap != null) {
                                    onTap(titles.indexOf(e));
                                  }
                                },
                                child: Text(
                                  e,
                                  style: (titles.indexOf(e) == selectedIndex)
                                      ? blackFontStyle2.copyWith(
                                          fontWeight: FontWeight.w500)
                                      : greyFontStyle,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 3,
                                margin: EdgeInsets.only(top: 13),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.5),
                                  color: (titles.indexOf(e) == selectedIndex)
                                      ? "020202".toColor()
                                      : Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
