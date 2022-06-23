class MenuItemResto {
  String name;
  String description;
  String price;
  String imageAsset;
  String rating;
  List<String> imageUrls;

  MenuItemResto({
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.rating,
    required this.imageUrls,
  });
}

var allMenuItem = [
  MenuItemResto(
    name: 'Ayam Goreng',
    description:
        'Ayam goreng merupakan salah satu makanan yang paling populer di dunia. Terbuat dari potongan ayam yang digoreng hingga garing, biasanya ayam goreng dikombinasikan dengan tepung sehingga rasanya menjadi lebih gurih dan crunchy. ',
    price: 'Rp 25.000',
    rating: "4.5",
    imageAsset: 'assets/images/ayam.png',
    imageUrls: [
      'https://ik.imagekit.io/e7fvuczbgfu/Projects/Restaurant_App/ayam4_sLNMs5NW4.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653222269569',
      'https://ik.imagekit.io/e7fvuczbgfu/Projects/Restaurant_App/ayam1_86TK7d8Rs.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653222271200',
      'https://ik.imagekit.io/e7fvuczbgfu/Projects/Restaurant_App/ayam2_zwvBeTe7U.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653222271358',
      'https://ik.imagekit.io/e7fvuczbgfu/Projects/Restaurant_App/ayam3_h-Rsbw8zH.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653222270307',
      'https://ik.imagekit.io/e7fvuczbgfu/Projects/Restaurant_App/ayam5_tlRnb5y8i.png?ik-sdk-version=javascript-1.4.3&updatedAt=1653222269697',
    ],
  ),
  MenuItemResto(
    name: 'Lele Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 23.000',
    rating: "4.5",
    imageAsset: 'assets/images/lele.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Gurame Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 33.000',
    rating: "4.5",
    imageAsset: 'assets/images/gurame.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Udang Goreng Krispi',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 28.000',
    rating: "4.4",
    imageAsset: 'assets/images/udang.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Tahu Tempe',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 15.000',
    rating: "4.3",
    imageAsset: 'assets/images/tahu.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Tumis Kangkung',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 15.000',
    rating: "4.4",
    imageAsset: 'assets/images/kangkung.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Terong Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 13.000',
    rating: "4.3",
    imageAsset: 'assets/images/terong.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Kol Goreng',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 12.000',
    rating: "4.3",
    imageAsset: 'assets/images/kol.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Nasi Putih',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 6.000',
    rating: "4.0",
    imageAsset: 'assets/images/nasi.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Es Jeruk',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 8.000',
    rating: "4.3",
    imageAsset: 'assets/images/es_jeruk.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Es Teh',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 7.000',
    rating: "4.5",
    imageAsset: 'assets/images/es_teh.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
  MenuItemResto(
    name: 'Air Mineral Aqua 250ml',
    description:
        '"Mie Gacoan" adalah sebuah merk dagang dari jaringan restaurant mie pedas no 1 di indonesia, yang menjadi anak perusahaan PT Pesta Pora Abadi.',
    price: 'Rp 5.000',
    rating: '4.4',
    imageAsset: 'assets/images/air.png',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'
    ],
  ),
];
