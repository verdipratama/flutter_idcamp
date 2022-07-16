/**
 * * Flutter Tutorials: Listview Widgets
 *
 * ! @author Verdi Pratama <hello@verside.com>
 * ! @link https://github.com/verdipratama/flutter_idcamp/
 * ! @licence MIT
 */
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final String text =
      'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum. Tidak seperti anggapan banyak orang, Lorem Ipsum bukanlah teks-teks yang diacak. Ia berakar dari sebuah naskah sastra latin klasik dari era 45 sebelum masehi, hingga bisa dipastikan usianya telah mencapai lebih dari 2000 tahun. Richard McClintock, seorang professor Bahasa Latin dari Hampden-Sidney College di Virginia, mencoba mencari makna salah satu kata latin yang dianggap paling tidak jelas, yakni consectetur, yang diambil dari salah satu bagian Lorem Ipsum. Setelah ia mencari maknanya di di literatur klasik, ia mendapatkan sebuah sumber yang tidak bisa diragukan. Lorem Ipsum berasal dari bagian 1.10.32 dan 1.10.33 dari naskah "de Finibus Bonorum et Malorum" (Sisi Ekstrim dari Kebaikan dan Kejahatan) karya Cicero, yang ditulis pada tahun 45 sebelum masehi. BUku ini adalah risalah dari teori etika yang sangat terkenal pada masa Renaissance. Baris pertama dari Lorem Ipsum, "Lorem ipsum dolor sit amet..", berasal dari sebuah baris di bagian 1.10.32. Bagian standar dari teks Lorem Ipsum yang digunakan sejak tahun 1500an kini di reproduksi kembali di bawah ini untuk mereka yang tertarik. Bagian 1.10.32 dan 1.10.33 dari "de Finibus Bonorum et Malorum"';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('IDCamp: ListView'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Flutter Widget: Penggunaan ListView Class',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(thickness: 3.0, indent: 20.0, endIndent: 20.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(text, style: const TextStyle(fontSize: 16.0)),
            ),
          ],
        ),
      ),
    );
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  final icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('IDCamp: ListView'),
      ),
      body: SafeArea(
        // ? Cara menghapus iklan
        // ? Ganti dengan ListView.builder
        // ? hapus separatorBuilder()
        child: ListView.separated(
          separatorBuilder: (context, position) {
            if (position % 5 == 0) {
              return Container(
                height: 60,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text(
                    'SPACE IKLAN',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
          itemCount: bulan.length,
          itemBuilder: (context, index) {
            return Card(
              // child: Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child:
              //       Text(bulan[index], style: const TextStyle(fontSize: 20.0)),
              // ),
              child: ListTile(
                title: Text(bulan[index]),
                subtitle: Text('ini subtitle dari: ${bulan[index]}'),
                leading: CircleAvatar(child: Text(bulan[index][0])),
                trailing: Icon(icons[index]),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(bulan[index]),
                  ));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
