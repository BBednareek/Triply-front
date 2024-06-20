import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/features/settings/switch_theme/domain/entities/theme_entity.dart';

@Injectable()
class ThemeCubit extends HydratedCubit<ThemeEntity> {
  ThemeCubit() : super(ThemeEntity(isDark: false));

  void changeTheme(bool isDark) => emit(state.copyWith(isDark: isDark));

  @override
  ThemeEntity? fromJson(Map<String, dynamic> json) =>
      ThemeEntity.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeEntity state) => state.toJson();
}
