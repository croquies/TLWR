import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tlwr_frontend/application/project/project_bloc.dart';
import 'package:tlwr_frontend/domain/project/project.dart';
import 'package:tlwr_frontend/presentation/dashboard/widgets/project_form.dart';
import 'package:tlwr_frontend/presentation/shared/colors.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_button.dart';
import 'package:tlwr_frontend/presentation/shared/tlwr_ui/tlwr_input.dart';

class ProjectList extends HookWidget {
  const ProjectList({Key? key, required this.projects}) : super(key: key);

  final List<Project>? projects;

  void copyToClipboard(FToast toast, String projectId) {
    const message = 'project id is copied to clipboard';
    Clipboard.setData(ClipboardData(text: projectId));
    if (kIsWeb) {
      Fluttertoast.showToast(
        msg: message,
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
            children: const [
              Icon(Icons.content_copy),
              SizedBox(width: 12),
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

    final showCreateOrUpdateDialog = useCallback((Project? project) {
      showDialog<bool>(
        context: context,
        builder: (context) => ProjectForm(project: project),
      ).then((result) {
        if (result ?? false) {
          context.read<ProjectBloc>().add(const ProjectEvent.list());
        }
      });
    }, []);

    if (projects != null) {
      if (projects!.isNotEmpty) {
        final size = MediaQuery.of(context).size;

        return Container(
          width: size.width *
              getValueForScreenType<double>(
                context: context,
                mobile: 0.95,
                desktop: 0.6,
              ),
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.spaceBetween,
                    runAlignment: WrapAlignment.spaceAround,
                    children: [
                      Container(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: TLWRButton(
                          title: 'Create new project',
                          onTap: () {
                            showCreateOrUpdateDialog(null);
                          },
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxWidth: 450),
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
                ),
              ),
              const SizedBox(height: 50),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: projects!.length,
                        itemBuilder: (context, index) {
                          final project = projects![index];
                          final projectId = project.id ?? '';
                          return Card(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Expanded(child: Text(project.name ?? '')),
                                  Expanded(
                                    flex: 0,
                                    child: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(10),
                                        splashColor: kcPrimaryColor,
                                        highlightColor: kcPrimaryColor,
                                        child: Container(
                                          constraints: BoxConstraints(
                                            minWidth:
                                                getValueForScreenType<double>(
                                              context: context,
                                              mobile: 0,
                                              desktop: 330,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              const Icon(Icons.copy),
                                              const SizedBox(width: 8),
                                              Text(
                                                getValueForScreenType(
                                                  context: context,
                                                  mobile: 'Copy project id',
                                                  desktop: projectId,
                                                ),
                                              ),
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
                                  Expanded(
                                    flex: 0,
                                    child: PopupMenuButton<Project?>(
                                      onSelected: (project) {
                                        if (project != null) {
                                          showCreateOrUpdateDialog(project);
                                        }
                                      },
                                      itemBuilder: (_) {
                                        return [
                                          PopupMenuItem(
                                            height: 20,
                                            padding: const EdgeInsets.all(10),
                                            value: project,
                                            child: Row(
                                              children: const [
                                                Icon(Icons.update),
                                                SizedBox(width: 5),
                                                Text('Update'),
                                              ],
                                            ),
                                          ),
                                          PopupMenuItem(
                                            height: 20,
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              children: const [
                                                Icon(Icons.delete),
                                                SizedBox(width: 5),
                                                Text('Delete'),
                                              ],
                                            ),
                                            onTap: () {
                                              context.read<ProjectBloc>().add(
                                                    ProjectEvent.delete(
                                                        projectId),
                                                  );
                                              context.read<ProjectBloc>().add(
                                                  const ProjectEvent.list());
                                            },
                                          ),
                                        ];
                                      },
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
              ),
            ],
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
