import 'package:flutter/material.dart';
import 'package:linkyou_task/src/features/users_list/data/models/user_response_model.dart';

class UserListTile extends StatelessWidget {
  final UserResponseModel user;

  const UserListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
            backgroundImage: NetworkImage(user.avatar ?? ''), radius: 30),
        title: Text(
          '${user.firstName ?? ''} ${user.lastName ?? ''}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          user.email ?? '',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
