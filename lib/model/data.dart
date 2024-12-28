class Data {
  String name;
  double price;
  String description;
  String imageAsset;
  String logo;
  final bool isNew;
  int quantity;

  Data(
      {required this.name,
      required this.price,
      required this.description,
      required this.imageAsset,
      required this.logo,
      this.quantity = 0,
      this.isNew = true});
}

var dataItemsList = [
  Data(
      name: 'Argento Divino',
      price: 151.9,
      description:
          'The \'Argento Divino\' ring is a masterpiece of silver craftsmanship, designed for those who appreciate timeless elegance. Its smooth finish and subtle curves evoke a sense of divine beauty, making it a perfect accessory for formal occasions or as a daily reminder of your inner strength and grace.',
      imageAsset: '',
      logo: 'images/list-data/list1.png',
      isNew: true),
  Data(
      name: 'Luce Lunare',
      price: 180.0,
      description:
          'Inspired by the tranquil glow of the moonlight, the \'Luce Lunare\' ring captures the ethereal beauty of the night. Its polished silver surface mirrors the soft light of the moon, creating a serene and calming presence. This ring is ideal for those who seek a harmonious blend of simplicity and elegance.',
      imageAsset: '',
      logo: 'images/list-data/list2.png',
      isNew: true),
  Data(
      name: 'Anello Sontuoso',
      price: 200.0,
      description:
          'The \'Anello Sontuoso\' ring is a testament to luxury and refinement. Featuring intricate details and a bold yet elegant design, this ring is crafted for those who love to make a statement. Its shimmering silver finish adds a touch of opulence, perfect for celebrating life\’s grand moments.',
      imageAsset: '',
      logo: 'images/list-data/list3.png',
      isNew: false),
  Data(
      name: 'Splendore Argenteo',
      price: 220.0,
      description:
          'Radiating brilliance and elegance, the \'Splendore Argenteo\' ring embodies the essence of sophistication. Its sleek design and flawless silver craftsmanship make it a versatile piece, whether worn as a standalone accessory or paired with other jewelry for a layered look.',
      imageAsset: '',
      logo: 'images/list-data/list4.png',
      isNew: true),
  Data(
      name: 'Corona Celestiale',
      price: 250.0,
      description:
          'The \'Corona Celestiale\' ring draws inspiration from the celestial wonders of the universe. With its crown-like design and radiant silver finish, it symbolizes power, beauty, and the infinite possibilities of the cosmos. Wear it as a reminder of your unique place in the universe.',
      imageAsset: '',
      logo: 'images/list-data/list5.png',
      isNew: false),
  Data(
      name: 'Riflesso Lunare',
      price: 170.0,
      description:
          'The \'Riflesso Lunare\' ring reflects the subtle magic of moonlit nights. Its minimalist design enhances its versatility, while the polished silver surface creates a mesmerizing effect that catches the light beautifully. Perfect for those who cherish understated elegance.',
      imageAsset: '',
      logo: 'images/list-data/list6.png',
      isNew: false),
  Data(
      name: 'Argento Eterno',
      price: 230.0,
      description:
          'Symbolizing enduring elegance, the \'Argento Eterno\' ring is a timeless piece crafted to last a lifetime. Its classic design and high-quality silver construction make it a meaningful gift for loved ones or a cherished addition to your own jewelry collection.',
      imageAsset: '',
      logo: 'images/list-data/list7.png',
      isNew: false),
  Data(
      name: 'Sogno d’Argento',
      price: 190.0,
      description:
          'The \'Sogno d’Argento\' ring is a silver dream come true. Its smooth curves and polished finish create a modern yet sophisticated look. This ring is perfect for anyone who values the harmony between simplicity and elegance in their personal style.',
      imageAsset: '',
      logo: 'images/list-data/list8.png',
      isNew: false),
  Data(
      name: 'Eclissi d’Argento',
      price: 240.0,
      description:
          'The \'Eclissi d’Argento\' ring captures the captivating beauty of a lunar eclipse. With a bold design and a stunning silver finish, this ring is an extraordinary accessory that stands out in any crowd. A perfect choice for those who embrace their individuality.',
      imageAsset: '',
      logo: 'images/list-data/list9.png',
      isNew: false),
  Data(
      name: 'Brillìo Celeste',
      price: 260.0,
      description:
          'The \'Brillìo Celeste\' ring shines with the radiance of the heavens. Its intricate design and brilliant silver craftsmanship create a piece that is both striking and sophisticated. This ring is a celebration of beauty and elegance, ideal for marking special moments in life.',
      imageAsset: '',
      logo: 'images/data/data1.png',
      isNew: true),
  Data(
      name: 'Stella d’Argento',
      price: 210.0,
      description:
          'The \'Stella d’Argento\' ring captures the enchanting allure of a silver star shining in the night sky. Meticulously crafted from premium silver, its delicate design evokes feelings of wonder and inspiration. This ring is perfect for dreamers and visionaries, serving as a symbol of hope, guidance, and the beauty of reaching for the stars. Its polished surface and timeless elegance make it a versatile piece, equally stunning as a daily accessory or for special occasions.',
      imageAsset: '',
      logo: 'images/data/data2.png',
      isNew: true)
];
