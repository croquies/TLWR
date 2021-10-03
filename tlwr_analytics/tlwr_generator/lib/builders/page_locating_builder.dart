import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:tlwr_generator/annotations/tlwr_page.dart';

class PageLocatingBuilder implements Builder {
  @override
  final buildExtensions = const {
    '.dart': ['.tlwr']
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final resolver = buildStep.resolver;
    if (!await resolver.isLibrary(buildStep.inputId)) return;
    final lib = LibraryReader(await buildStep.inputLibrary);
    const exportAnnotation = TypeChecker.fromRuntime(TLWRPage);
    final annotated = [
      for (var member in lib.annotatedWith(exportAnnotation))
        member.element.name,
    ];
    if (annotated.isNotEmpty) {
      buildStep.writeAsString(
          buildStep.inputId.changeExtension('.tlwr'), annotated.join(','));
    }
  }
}
