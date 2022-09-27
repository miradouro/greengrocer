import 'package:flutter/material.dart';
import 'package:green_grocer/src/config/custom_colors.dart';

import '../../../models/item_model.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  const ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagem
            Expanded(
              child: Image.asset(item.imgUrl),
            ),

            // Nome
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Preço - Unidade
            Row(
              children: [
                Text(
                  item.price.toStringAsFixed(2),
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomColors.customSwatchColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '/${item.unit}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
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
