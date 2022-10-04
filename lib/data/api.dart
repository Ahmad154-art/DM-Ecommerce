import 'dart:math';

class DummyData {
  static Future<Map<String, Object>> getAllProducts() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 5));
    if (n % 2 == 0 && false) {
      throw new Exception("Error Getting product");
    } else
      return {
        "status": "success",
        "count": 3,
        "products": [
          {
            'id': '1',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/airpods1.jpg',
            'isFavorite': true,
            'videoUrl': '',
          },
          {
            'id': '2',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/airpods2.jpg',
            'isFavorite': false,
            'videoUrl': ''
          },
          {
            'id': '3',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/airpods3.png',
            'isFavorite': false,
            'videoUrl': ''
          },
        ]
      };
  }

  static Future<Map<String, Object>> getHeadphoneProducts() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 5));
    if (n / 2 == 0) {
      throw new Exception("Error Getting product");
    } else
      return {
        "status": "success",
        "count": 3,
        "products": [
          {
            'id': '1',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/headphone1.jpg',
            'isFavorite': true,
            'videoUrl': '',
          },
          {
            'id': '2',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/headphone2.jpg',
            'isFavorite': false,
            'videoUrl': ''
          },
          {
            'id': '3',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/headphone3.jpg',
            'isFavorite': false,
            'videoUrl': ''
          },
          {
            'id': '4',
            'title': 'Headphone01',
            'price': 500.0,
            'imageUrl': 'assets/images/headphone4.jpg',
            'isFavorite': false,
            'videoUrl': ''
          },
        ]
      };
  }

  static Future<Map<String, Object>> getCategoryFilter() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 2));
    if (true) {
      throw Exception("Error Getting product");
    } else
      return {
        "categories": [
          {
            'id': '1',
            'title': 'Headphone',
            'imageUrl': 'assets/icons/headphones.svg',
            'children': [
              {
                'id': '5',
                'title': 'HeadPhone Wireless',
              },
              {
                'id': '6',
                'title': 'EarPhone Wireless',
              },
              {
                'id': '7',
                'title': 'Speaker Wireless',
              }
            ]
          },
          {
            'id': '2',
            'title': 'AirPhone',
            'imageUrl': 'assets/icons/earphones.svg',
            'children': [
              {
                'id': '8',
                'title': 'HeadPhone Wireless',
              },
              {
                'id': '9',
                'title': 'EarPhone Wireless',
              },
              {
                'id': '10',
                'title': 'Speaker Wireless',
              }
            ]
          },
          {
            'id': '3',
            'title': 'Music Headphone',
            'imageUrl': 'assets/icons/music_headphone.svg',
            'children': [
              {
                'id': '11',
                'title': 'HeadPhone Wireless',
              },
              {
                'id': '12',
                'title': 'EarPhone Wireless',
              },
              {
                'id': '13',
                'title': 'Speaker Wireless',
              }
            ]
          },
          {
            'id': '4',
            'title': 'Wieless Headphone',
            'imageUrl': 'assets/icons/wireless.svg',
            'children': [
              {
                'id': '14',
                'title': 'HeadPhone Wireless',
              },
              {
                'id': '15',
                'title': 'EarPhone Wireless',
              },
              {
                'id': '16',
                'title': 'Speaker Wireless',
              }
            ]
          },
        ]
      };
  }

  static Future<Map<String, Object>> getSlides() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 2));
    if (false) {
      throw new Exception("Error Getting product");
    } else
      return {
        "slides": [
          {"id": 1, "name": "Headphones", "image": "image/man.png"},
          {
            "id": 2,
            "name": "Headphones",
            "image": "image/women_s purple button-up.jpg"
          },
          {
            "id": 3,
            "name": "Headphones",
            "image": "image/wallpaperflare.com_wallpaper (1).jpg"
          },
          {
            "id": 4,
            "name": "Headphones",
            "image": "image/wallpaperflare.com_wallpaper (1).jpg"
          },
        ]
      };
  }
}
