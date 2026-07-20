import 'package:flutter/material.dart';
import '../theme/filea_theme.dart';

enum RoutineCategory { wakeUp, postureReset, fullBody, sleep, hips }

extension RoutineCategoryX on RoutineCategory {
  String get label => switch (this) {
        RoutineCategory.wakeUp => 'Wake Up',
        RoutineCategory.postureReset => 'Posture Reset',
        RoutineCategory.fullBody => 'Full Body',
        RoutineCategory.sleep => 'Sleep',
        RoutineCategory.hips => 'Hips',
      };

  /// Category accent — the dawn→night arc from the brand kit.
  Color get accent => switch (this) {
        RoutineCategory.wakeUp => FileaColors.softGold,
        RoutineCategory.postureReset => FileaColors.duskLilac,
        RoutineCategory.fullBody => FileaColors.sage,
        RoutineCategory.sleep => FileaColors.nightIndigo,
        RoutineCategory.hips => const Color(0xFF5F9EA0),
      };

  bool get isNight => this == RoutineCategory.sleep;
}

class Pose {
  final String id;
  final String name;
  final String cue; // one short spoken-style instruction
  final int seconds;
  final int figureVariant; // which placeholder figure to draw (0-2)

  const Pose(this.id, this.name, this.cue, this.seconds, this.figureVariant);
}

class Routine {
  final String id;
  final String name;
  final RoutineCategory category;
  final String description;
  final String difficulty;
  final List<Pose> poses;

  const Routine({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.difficulty,
    required this.poses,
  });

  int get totalSeconds => poses.fold(0, (sum, p) => sum + p.seconds);
  int get totalMinutes => (totalSeconds / 60).ceil();
}

class CheckIn {
  final int stiffness; // 0 loose · 1 a little stiff · 2 very stiff
  final int energy; // 0 low · 1 okay · 2 energized
  final int sleep; // 0 poor · 1 fine · 2 great
  const CheckIn(this.stiffness, this.energy, this.sleep);
}
