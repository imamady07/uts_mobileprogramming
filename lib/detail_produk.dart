import 'package:flutter/material.dart';

class DetailProdukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Text('IJASA', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            onPressed: () {
              // Navigasi ke halaman profil
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.deepPurple[50],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar mesin cuci
              Image.asset(
                'assets/images/mesincuci.jpeg', // Ganti dengan path gambar Anda
                height: 150,
              ),
              SizedBox(height: 20),
              // Nama produk
              Text(
                'Laundry Cuci Bersih Setrika',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 10),
              // Harga produk
              Text(
                'Rp. 10.000',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 20),
              // Deskripsi produk
              Text(
                'Jaminan cuci bersih, wangi dan suci dengan hasil setrika yang rapi. Harga tertera untuk per-kg.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              // Tombol Checkout
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Warna tombol
                  minimumSize: Size(double.infinity, 50), // Lebar tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Fungsi checkout
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Checkout berhasil!')),
                  );
                },
                child: Text(
                  'Check Out',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
