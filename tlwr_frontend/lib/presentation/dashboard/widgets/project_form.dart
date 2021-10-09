import 'package:flutter/material.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';

class ProjectForm extends StatelessWidget {
  const ProjectForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Card(
        child: Container(
          child: Column(
            children: [
              TLWRInputFormField(
                placeholder: 'Project name',
              ),
              TLWRButton(
                title: 'Create new project',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
