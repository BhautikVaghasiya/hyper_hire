import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});
  final List<String> textList = [
    '“가격 저렴해요”',
    '“CPU온도 고온”',
    '“서멀작업 가능해요”',
    '“게임 잘 돌아가요”'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: TextStyle(color: Colors.black26, fontSize: 14),
            ),
            Text(
              '베스트 리뷰어',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/user1.png'),
                  ),
                  Text(
                    'Name01',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Text(
                          '골드',
                          style: TextStyle(color: Colors.yellow),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text('조립컴 업체를 운영하며 리뷰를 작성합니다.'),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('작성한 리뷰'),
                  Text('총 35개'),
                  Spacer(),
                  Image.asset('assets/images/_SelectMenu.png')
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/pro4.png',
                      height: 90,
                      width: 90,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMD 라이젠 5 5600X 버미어정품 멀티팩',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 3),
                        Row(children: [
                          Image.asset('assets/images/Frame 1609.png',
                              height: 18),
                          Text('4.07')
                        ])
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user1.png'),
              ),
              title: Text('Name01'),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.bookmark_border)),
              subtitle: Row(
                children: [
                  Text('2022.12.09'),
                ],
              ),
            ),
            SizedBox(
              height: 30, // Adjust height to fit text properly
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: textList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8), // Spacing between items
                    child: Text(
                      textList[index],
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                  );
                },
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: -4),
              leading: Icon(Icons.electric_bolt),
              title: Text(
                '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: -4),
              leading: Icon(
                Icons.electric_bolt,
                color: Colors.black12,
              ),
              title: Text(
                '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 18),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/images/reviewimg.png',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
