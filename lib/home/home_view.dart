import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iyangrid/detail/detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wisata Bandung'),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: LayoutBuilder(builder: (BuildContext context, constraints) {
          if (constraints.maxWidth < 700) {
            return SafeArea(child: _mobileView());
          } else if (constraints.maxWidth < 1366) {
            return SafeArea(child: _tabletView());
          } else {
            return SafeArea(child: _laptopView());
          }
        }));
  }
}

final List<Map<String, String>> dataList = [
  {
    'name': 'Farm House Lembang',
    'location': 'Lembang',
    'imageURL':
        'https://akcdn.detik.net.id/community/media/visual/2021/06/13/farm-house-susu-lembang-1_169.jpeg'
  },
  {
    'name': 'Observatorium Bosscha',
    'location': 'Lembang',
    'imageURL':
        'https://lh3.googleusercontent.com/p/AF1QipN2yvh44_86AEb_t7Fmi1PCwWM-VigWGjk2L7Fy=s680-w680-h510'
  },
  {
    'name': 'Jalan Asia Afrika',
    'location': 'Kota Bandung',
    'imageURL':
        'https://holidayinnbandung.co.id/wp-content/uploads/2020/10/01_discover-asia-africa-pastel-1.jpg'
  },
  {
    'name': 'Stone Garden',
    'location': 'Padalarang',
    'imageURL':
        'https://o-cdn-cas.sirclocdn.com/parenting/images/Stone-Garden-Bandung-travelspromo.width-800.format-webp.webp'
  },
  {
    'name': 'Taman Film Pasopati',
    'location': 'Kota Bandung',
    'imageURL':
        'https://o-cdn-cas.sirclocdn.com/parenting/images/Tiket_Masuk_TFB.width-800.format-webp.webp'
  },
  {
    'name': 'Museum Geologi',
    'location': 'Kota Bandung',
    'imageURL':
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Bandung%2C_Museum_Geologi.jpg/1200px-Bandung%2C_Museum_Geologi.jpg'
  },
];

Widget _mobileView() {
  return ListView.builder(
    itemCount: dataList.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailView(itemData: dataList[index])),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Row(
                  children: [
                    Flexible(
                      child: Image.network(
                        dataList[index]['imageURL']!,
                        width: 200,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dataList[index]['name']!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(dataList[index]['location']!)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      );
    },
  );
}

Widget _tabletView() {
  return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailView(itemData: dataList[index])),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Image.network(
                            dataList[index]['imageURL']!,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dataList[index]['name']!),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(dataList[index]['location']!)
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
        );
      });
}

Widget _laptopView() {
  return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailView(itemData: dataList[index])),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: Column(
                      children: [
                        Flexible(
                          child: Image.network(
                            dataList[index]['imageURL']!,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(dataList[index]['name']!),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(dataList[index]['location']!)
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
        );
      });
}
