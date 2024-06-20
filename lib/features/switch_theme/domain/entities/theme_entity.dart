class ThemeEntity {
  bool isDark;
  ThemeEntity({
    required this.isDark,
  });

  ThemeEntity copyWith({
    bool? isDark,
  }) {
    return ThemeEntity(
      isDark: isDark ?? this.isDark,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'isDark': isDark,
    };
  }

  factory ThemeEntity.fromJson(Map<String, dynamic> json) {
    return ThemeEntity(
      isDark: json['isDark'],
    );
  }

  @override
  String toString() => 'ThemeEntity(isDark: $isDark)';
}
