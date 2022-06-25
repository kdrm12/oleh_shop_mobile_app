import 'package:oleh_shop_app/models/oleh.dart';

enum ErrorPPOB { payed, unknow, failed }

class Constant {
  static final List<oleh> listCart = [
    const oleh(
        id: 1,
        gambar:
            'https://www.99.co/blog/indonesia/wp-content/uploads/2021/12/gambar-fauna-kepik.jpg',
        nama: 'Lorem Ipsum',
        deskripsi:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed luctus quam. Cras molestie dui orci, vel maximus metus pretium ac. Morbi sodales leo non lobortis hendrerit. Pellentesque nisl nisi, pretium ac interdum ac, ornare iaculis nunc. Donec congue sodales ante eget auctor. Vestibulum non eros nec turpis elementum finibus et eu augue. Aenean gravida ipsum odio, et imperdiet ligula tristique sit amet. Donec a laoreet urna, a viverra orci.',
        harga: 50000,
        terjual: 10),
    const oleh(
        id: 1,
        gambar:
            'https://www.99.co/blog/indonesia/wp-content/uploads/2021/12/gambar-fauna-kepik.jpg',
        nama: 'Lorem Ipsum',
        deskripsi:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed luctus quam. Cras molestie dui orci, vel maximus metus pretium ac. Morbi sodales leo non lobortis hendrerit. Pellentesque nisl nisi, pretium ac interdum ac, ornare iaculis nunc. Donec congue sodales ante eget auctor. Vestibulum non eros nec turpis elementum finibus et eu augue. Aenean gravida ipsum odio, et imperdiet ligula tristique sit amet. Donec a laoreet urna, a viverra orci.',
        harga: 50000,
        terjual: 10),
  ];
}
