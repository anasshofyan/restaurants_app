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
    name: 'Ayam Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 25000',
    rating: 4,
    imageAsset: 'assets/images/ayam.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Lele Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 23000',
    rating: 4,
    imageAsset: 'assets/images/lele.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Gurame Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 33000',
    rating: 4,
    imageAsset: 'assets/images/gurame.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Udang Goreng Krispi',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 28000',
    rating: 4,
    imageAsset: 'assets/images/udang.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Tahu Tempe',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 15000',
    rating: 4,
    imageAsset: 'assets/images/tahu.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Tumis Kangkung',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 15000',
    rating: 4,
    imageAsset: 'assets/images/kangkung.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Terong Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 13000',
    rating: 4,
    imageAsset: 'assets/images/terong.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Kol Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 12000',
    rating: 4,
    imageAsset: 'assets/images/kol.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Nasi Putih',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 6000',
    rating: 4,
    imageAsset: 'assets/images/nasi.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Es Jeruk',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 8000',
    rating: 4,
    imageAsset: 'assets/images/es_jeruk.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Es Teh',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 7000',
    rating: 4,
    imageAsset: 'assets/images/es_teh.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItem(
    name: 'Air Mineral Aqua 250ml',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 5000',
    rating: 4,
    imageAsset: 'assets/images/air.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
];
