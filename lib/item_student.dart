import 'package:flutter/material.dart';
import 'package:tatak_form/information_modal.dart';

class ItemStudent extends StatefulWidget {
  const ItemStudent({super.key});

  @override
  State<ItemStudent> createState() => _ItemStudentState();
}

class _ItemStudentState extends State<ItemStudent> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          splashColor: Colors.indigo[300],
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return InformationModal();
              },
            );
          },
          child: ListTile(
            textColor: Colors.grey[700],
            title: Text('Ryan James Macawili'),
            leading: const Icon(
              Icons.verified_sharp,
              color: Color(0xFF2C2E93),
            ),
            isThreeLine: false,
            subtitle: Text("20229464"),
            trailing: Text("3:00 pm"),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.grey,
          thickness: 0.5,
          height: 0.4,
        );
      },
    );
  }
}
