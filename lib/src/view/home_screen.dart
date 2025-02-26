import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hyper_hire_app/src/view/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List product = [
    {
      'image': 'assets/images/pro1.png',
      'rank': 'assets/images/rank1.png',
    },
    {
      'image': 'assets/images/pro2.png',
      'rank': 'assets/images/rank2.png',
    },
    {
      'image': 'assets/images/pro3.png',
      'rank': 'assets/images/rank3.png',
    },
  ];

  final List<String> imgList = [
    'assets/images/image_1.png',
    'assets/images/image_2.png',
    'assets/images/image_3.png',
    'assets/images/image_4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'LOGO',
          style:
              TextStyle(color: Color(0xFF5D5FEF), fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(18),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF3C41BF), width: 1.5),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF3C41BF),
                    ),
                    hintStyle: TextStyle(color: Color(0xFF868686)),
                    hintText: '검색어를 입력하세요'),
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(viewportFraction: 1),
              items: imgList
                  .map((item) => Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('제일 핫한 리뷰를 만나보세요'),
                    Text(
                      '리뷰️  랭킹⭐ top 3',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.keyboard_arrow_right))
              ],
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: product.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            product[index]['image'],
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset(product[index]['rank']))
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black12)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LG전자 스탠바이미 27ART10AKPL (스탠',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Text(
                            '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.'),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('4.36'),
                            SizedBox(width: 3),
                            Text(
                              '(136)',
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text('LG전자'),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text('고화질'),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 12,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('골드 계급 사용자들이예요'),
                Text(
                  '베스트 리뷰어 🏆 Top10',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ReviewScreen()),
                            );
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 10, bottom: 8),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/user1.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Name0${index + 1}',
                          style: TextStyle(color: Color(0xFF616161)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
