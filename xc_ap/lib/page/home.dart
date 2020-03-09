import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const APPBAR_SCROLL_OFFSET = 100;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double appBarAlpha = 0;

  _onScroll(offset) {
    double alpha = offset/APPBAR_SCROLL_OFFSET;
    if (alpha < 0) {
      alpha = 0;
    }else if(alpha > 1) {
      alpha = 1;
    }

    setState(() {
      appBarAlpha = alpha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: NotificationListener(
                onNotification: (scrollNo) {
                  if (scrollNo is ScrollUpdateNotification &&
                      scrollNo.depth == 0) {
                    _onScroll(scrollNo.metrics.pixels);
                  }
                  return;
                },
                child: ListView(
                  children: <Widget>[
                    BannarView(),
                    Container(
                      height: 800,
                      child: ListTile(
                        title: Text("123123"),
                      ),
                    )
                  ],
                ),
              )
          ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top:20),
                  child: Text("首页",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
      ],
    ));
  }
}

class BannarView extends StatelessWidget {
  final List _bannarList = [
    "https://alcdn001.huajin.com/pro/2020/01/09/b0572bca7d4e46e8bf207043119cb75e.png",
    "https://alcdn001.huajin.com/pro/2020/01/10/78ea6fd0ca9a4a4885b921d9826fee1c.png",
    "https://alcdn001.huajin.com/pro/2020/01/09/d90fb68ef6954735a5aca098e2397dd2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: Swiper(
        itemCount: _bannarList.length,
        autoplay: true,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: Colors.white,
                activeColor: Colors.red,
                size: 8.0,
                activeSize: 8.0,
                space: 5)),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            _bannarList[index],
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
