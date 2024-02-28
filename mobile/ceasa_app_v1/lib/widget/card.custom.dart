import 'package:flutter/material.dart';

import '../models/cardModel.dart';

// ignore: must_be_immutable
class CardCustom extends StatelessWidget {
  var model = CardModel();
  CardCustom({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: ListTile(
          title: Text(model.nomeproduto!),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Unitário R\$: ${model.peso}'),
              Text('Total: R\$ ${model.peso! * model.quantidade!}')
            ],
          ),
          subtitle: Text('Quantidade: ${model.quantidade!}'),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(model.urlImg ??
                  'https://img.freepik.com/psd-gratuitas/misture-frutas-png-isoladas-em-fundo-transparente_191095-9862.jpg')),
        ),
      ),
    );
  }
}
