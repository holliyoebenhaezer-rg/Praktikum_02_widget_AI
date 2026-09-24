import 'package:flutter/material.dart';

class PenghitungSuka extends StatefulWidget {
  const PenghitungSuka({super.key});

  @override
  State<PenghitungSuka> createState() => _PenghitungSukaState();
}

class _PenghitungSukaState extends State<PenghitungSuka> {
  int _jumlahSuka = 0;
  bool _disukai = false;

  void _tambahSuka() {
    setState(() {
      if (_disukai) {
        _jumlahSuka--;
        _disukai = false;
      } else {
        _jumlahSuka++;
        _disukai = true;
      }
    });
  }

  void _reset() {
    setState(() {
      _jumlahSuka = 0;
      _disukai = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _disukai ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                  size: 28,
                ),
                const SizedBox(width: 8),
                Text(
                  'Jumlah Suka: $_jumlahSuka',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _tambahSuka,
                  icon: Icon(
                    _disukai ? Icons.thumb_up : Icons.thumb_up_outlined,
                  ),
                  label: Text(_disukai ? 'Batal Suka' : 'Suka'),
                ),
                OutlinedButton.icon(
                  onPressed: _reset,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}