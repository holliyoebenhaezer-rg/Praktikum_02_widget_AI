import 'package:flutter/material.dart';
import 'profil_card.dart';
import 'penghitung_suka.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum Widget Flutter'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Memanggil ProfilCard dengan data contoh
            const ProfilCard(
              nama: 'H. Eben Haezer Thonak',
              nim: '1201240001',
              prodi: 'Teknik Komputer',
            ),
            const SizedBox(height: 20),
            const Text(
              'Statistik Interaksi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const PenghitungSuka(),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(
                  child: KotakInfo(
                    judul: 'Status',
                    isi: 'Aktif',
                    warnaIcon: Colors.green,
                    icon: Icons.check_circle,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: KotakInfo(
                    judul: 'Modul',
                    isi: 'Widget Dasar',
                    warnaIcon: Colors.orange,
                    icon: Icons.book,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KotakInfo extends StatelessWidget {
  final String judul;
  final String isi;
  final Color warnaIcon;
  final IconData icon;

  const KotakInfo({
    super.key,
    required this.judul,
    required this.isi,
    required this.warnaIcon,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.indigo.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.indigo.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: warnaIcon, size: 20),
              const SizedBox(width: 8),
              Text(
                judul,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            isi,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}