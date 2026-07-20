import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/filea_theme.dart';
import '../widgets/one_line_figure.dart';
import 'player_screen.dart';

class RoutineDetailScreen extends StatelessWidget {
  final Routine routine;
  const RoutineDetailScreen({super.key, required this.routine});

  @override
  Widget build(BuildContext context) {
    final night = routine.category.isNight;
    final theme = night ? FileaTheme.dark() : Theme.of(context);
    final t = theme.textTheme;

    return Theme(
      data: theme,
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: t.bodyLarge?.color),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [
                    Text(routine.name, style: t.displaySmall),
                    const SizedBox(height: 8),
                    Text(routine.description, style: t.bodyLarge),
                    const SizedBox(height: 12),
                    Text(
                        '${routine.totalMinutes} min · ${routine.poses.length} stretches · ${routine.difficulty}',
                        style: t.bodySmall),
                    const SizedBox(height: 20),
                    ...routine.poses.map((pose) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              OneLineFigure(
                                  variant: pose.figureVariant,
                                  color: night
                                      ? FileaColors.darkPrimary
                                      : FileaColors.sage,
                                  size: 44),
                              const SizedBox(width: 12),
                              Expanded(
                                  child: Text(pose.name, style: t.bodyLarge)),
                              Text('${pose.seconds}s', style: t.bodySmall),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => PlayerScreen(routine: routine))),
                  child: Text(night ? 'Begin winding down' : 'Start'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
