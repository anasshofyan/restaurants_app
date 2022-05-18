class MenuItem {
  String name;
  String description;
  String price;
  String imageAsset;
  int rating;
  List<String> imageUrls;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.rating,
    required this.imageUrls,
  });
}

var menuItemList = [
  MenuItem(
    name: 'Mie Gacoan, Genteng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 25000',
    rating: 4,
    imageAsset: 'images/farm-house.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
];
