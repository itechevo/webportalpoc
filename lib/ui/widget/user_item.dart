import 'package:flutter/material.dart';

import '../../domain/model/user.dart';

class UserItem extends StatelessWidget {
  const UserItem(
      {super.key, required this.user, required this.onClickCallback});

  final User user;
  final ValueSetter<User> onClickCallback;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 2,
          child: InkWell(
              onTap: () => {onClickCallback(user)},
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: Theme.of(context).textTheme.titleMedium!,
                    ),
                  ],
                )
              ]))),
      Expanded(
          flex: 0,
          child: IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.heart_broken),
          )),
    ]);
  }
}
