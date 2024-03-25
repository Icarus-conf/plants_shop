import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey[200],
              filled: true,
              prefixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Image.asset(
            'assets/icons/ic-edit.png',
            width: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
