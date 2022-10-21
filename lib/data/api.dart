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

  static Future<Map<String, Object>> getproduct() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 7));
    if (false) {
      throw Exception("Error Getting product");
    } else
      return {
        "product": [
          {
            "id": 1,
            "name": "Headphones",
            "price": "200",
            "image": "image/¦+¦+.jpg"
          },
          {
            "id": 2,
            "name": "Headphones",
            "price": "200",
            "image": "image/5 (2).jpg"
          },
          {
            "id": 3,
            "name": "Headphones",
            "price": "200",
            "image": "image/airpods1.jpg"
          },
          {
            "id": 4,
            "name": "Headphones",
            "price": "200",
            "image": "image/airpods3.png"
          },
          {
            "id": 5,
            "name": "Headphones",
            "price": "200",
            "image": "image/微信图片_20220426153928.jpg"
          },
        ]
      };
  }

  static Future<Map<String, Object>> mostOrder() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 7));
    if (false) {
      throw new Exception("Error Getting product");
    } else
      return {
        "product": [
          {
            "id": 1,
            "name": "Headphones",
            "price": "20",
            "image": "image/¦+¦+.jpg"
          },
          {
            "id": 2,
            "name": "Headphones",
            "price": "500",
            "image": "image/5 (2).jpg"
          },
          {
            "id": 3,
            "name": "Headphones",
            "price": "1",
            "image": "image/airpods1.jpg"
          },
          {
            "id": 4,
            "name": "Headphones",
            "price": "1000",
            "image": "image/airpods3.png"
          },
          {
            "id": 5,
            "name": "Headphones",
            "price": "1000",
            "image": "image/airpods3.png"
          },
        ]
      };
  }

  static Future<Map<String, Object>> categoryName() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 7));
    if (false) {
      throw new Exception("Error Getting product");
    } else
      return {
        "product": [
          {
            "id": 1,
            "name": "Headphones",
            "price": "20",
            "image": "image/¦+¦+.jpg"
          },
          {
            "id": 2,
            "name": "Headphones",
            "price": "500",
            "image": "image/5 (2).jpg"
          },
          {
            "id": 3,
            "name": "Headphones",
            "price": "1",
            "image": "image/airpods1.jpg"
          },
          {
            "id": 4,
            "name": "Headphones",
            "price": "1",
            "image": "image/airpods1.jpg"
          },
        ]
      };
  }

  static Future<Map<String, Object>> category() async {
    Random r = Random();
    int n = r.nextInt(100);

    await Future.delayed(Duration(seconds: 1));
    if (false) {
      throw new Exception("Error Getting product");
    } else
      return {
        "category": [
          {"id": 1, "name": "Headphones", "image": "image/adds3.jpg"},
          {
            "id": 2,
            "name": "Headphones",
            "image": "image/fausto-sandoval-w5m3PIGvkqI-unsplash.jpg"
          },
          {
            "id": 3,
            "name": "Headphones",
            "image": "image/wallpaperflare.com_wallpaper.jpg"
          },
          {"id": 4, "name": "Headphones", "image": "image/adds3.jpg"},
          {
            "id": 5,
            "name": "Headphones",
            "image": "image/wallpaperflare.com_wallpaper (1).jpg"
          },
        ]
      };
  }
}
