import 'dart:async';
import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/filea_theme.dart';
import '../widgets/one_line_figure.dart';
import 'completion_screen.dart';

/// The hero screen — full-screen pose, countdown, thread progress.
class PlayerScreen extends StatefulWidget {
  final Routine routine;
  const PlayerScreen({super.key, required this.routine});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late int poseIndex;
  late int remaining;
  bool paused = false;
  Timer? timer;

  Pose get pose => widget.routine.poses[poseIndex];
  bool get night => widget.routine.category.isNight;

  @override
  void initState() {
    super.initState();
    poseIndex = 0;
    remaining = widget.routine.poses.first.seconds;
    _start();
  }

  void _start() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (paused) return;
      if (remaining > 1) {
        setState(() => remaining--);
      } else {
        _next();
      }
    });
  }

  void _next() {
    if (poseIndex < widget.routine.poses.length - 1) {
      setState(() {
        poseIndex++;
        remaining = pose.seconds;
      });
    } else {
      _finish();
    }
  }

  void _previous() {
    if (poseIndex > 0) {
      setState(() {
        poseIndex--;
        remaining = pose.seconds;
      });
    } else {
      setState(() => remaining = pose.seconds);
    }
  }

  void _finish() {
    timer?.cancel();
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => CompletionScreen(routine: widget.routine)));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = night ? FileaTheme.dark() : FileaTheme.light();
    final t = theme.textTheme;
    final total = widget.routine.poses.length;
    // overall progress: completed poses + progress within current pose
    final poseProgress = 1 - remaining / pose.seconds;
    final overall = (poseIndex + poseProgress) / total;
    final accent = night ? FileaColors.darkPrimary : FileaColors.sage;
    final nextName = poseIndex < total - 1
        ? widget.routine.poses[poseIndex + 1].name
        : 'Done';

    return Theme(
      data: theme,
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.close, color: t.bodyLarge?.color)),
                    const Spacer(),
                    Text('Stretch ${poseIndex + 1} of $total',
                        style: t.bodySmall),
                  ],
                ),
                const Spacer(),
                // Pose art — swap for Léa illustration when assets arrive
                OneLineFigure(
                    variant: pose.figureVariant, color: accent, size: 240),
                const SizedBox(height: 24),
                Text(pose.name,
                    style: t.headlineMedium, textAlign: TextAlign.center),
                const SizedBox(height: 8),
                Text(pose.cue,
                    style: t.bodyLarge, textAlign: TextAlign.center),
                const SizedBox(height: 24),
                Text(
                  '${(remaining ~/ 60)}:${(remaining % 60).toString().padLeft(2, '0')}',
                  style: FileaTheme.timer(context,
                      color: night ? FileaColors.darkText : FileaColors.inkMoss),
                ),
                const SizedBox(height: 16),
                ThreadProgressBar(
                    progress: overall,
                    color: accent,
                    track: night
                        ? FileaColors.darkSurface
                        : FileaColors.paleMist),
                const SizedBox(height: 10),
                Text('Next: $nextName', style: t.bodySmall),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: _previous,
                      iconSize: 32,
                      icon: Icon(Icons.skip_previous_rounded,
                          color: t.bodyLarge?.color),
                    ),
                    // big central pause — min 48dp touch target
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: accent,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(22),
                      ),
                      onPressed: () => setState(() => paused = !paused),
                      child: Icon(
                          paused
                              ? Icons.play_arrow_rounded
                              : Icons.pause_rounded,
                          size: 36,
                          color:
                              night ? FileaColors.darkBg : Colors.white),
                    ),
                    IconButton(
                      onPressed: _next,
                      iconSize: 32,
                      icon: Icon(Icons.skip_next_rounded,
                          color: t.bodyLarge?.color),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
