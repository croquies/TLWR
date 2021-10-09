import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';

class ProjectList extends HookWidget {
  const ProjectList({Key? key, required this.projects}) : super(key: key);

  final List<Project>? projects;

  void copyToClipboard(FToast toast, String projectId) {
    final message = 'project id $projectId is copied to clipboard';
    Clipboard.setData(ClipboardData(text: projectId));
    if (kIsWeb) {
      Fluttertoast.showToast(
        msg: message,
        timeInSecForIosWeb: 4,
        gravity: ToastGravity.TOP,
        webShowClose: true,
        webBgColor: 'rgb(${kcBlackHighlightColor.red}, '
            '${kcBlackHighlightColor.green}, '
            '${kcBlackHighlightColor.blue})',
      );
    } else {
      toast.showToast(
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(milliseconds: 1000),
        fadeDuration: 250,
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kcBlackHighlightColor,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.content_copy),
              const SizedBox(width: 12),
              Text(message),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final toast = useMemoized(() => FToast().init(context));
    if (projects != null) {
      if (projects!.isNotEmpty) {
        final size = MediaQuery.of(context).size;
        final p = [...projects ?? [], ...projects ?? [], ...projects ?? []];

        return Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TLWRButton(
                        title: 'Create new project',
                        onTap: () {},
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: TLWRInputFormField(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        trailing: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(5),
                          ),
                          child: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: p.length,
                  itemBuilder: (context, index) {
                    final project = p[index];
                    final projectId = project.id ?? '';
                    return Card(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Text(project.name ?? ''),
                            ),
                            Expanded(
                              flex: 0,
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(10),
                                  splashColor: kcPrimaryColor,
                                  highlightColor: kcPrimaryColor,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 10),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.copy),
                                        const SizedBox(width: 8),
                                        Text(projectId),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    copyToClipboard(toast, projectId);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      } else {
        return const Center(child: Text('Create your project!'));
      }
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
