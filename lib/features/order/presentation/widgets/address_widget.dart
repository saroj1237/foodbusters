import 'package:flutter/material.dart';
import 'package:foodbusters/core/extenstions/extenstions.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/domain/entities/address_entity.dart';

class AddressCard extends StatelessWidget {
  const AddressCard(
      {Key? key,
      required this.address,
      this.onSelected,
      required this.isSelected})
      : super(key: key);
  final Address address;
  final String Function()? onSelected;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(bottom: AppMargin.m12),
        child: Row(
          children: [
            Checkbox(
              value: isSelected,
              onChanged: (value) {},
              checkColor: ColorManager.white,
              shape: const CircleBorder(),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.name.firstWord(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(
                    "${address.location.latitude}°N, ${address.location.longitude}°E",
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: ColorManager.error,
              ),
            )
          ],
        ),
      ),
    );
  }
}
