import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class SupabaseModule {
  @lazySingleton
  Supabase get supabase => Supabase.instance;
}

@module
abstract class LoggerModule {
  @lazySingleton
  Logger get logger {
    if (kReleaseMode) {
      return Logger(level: Level.warning);
    }
    return Logger();
  }
}
