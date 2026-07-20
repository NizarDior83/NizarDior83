import 'package:flutter/material.dart';
import '../main.dart';
import '../models/models.dart';
import '../theme/filea_theme.dart';
import '../widgets/one_line_figure.dart';

/// Gentle celebration — updates the streak, asks how you feel now.
class CompletionScreen extends StatefulWidget {
  final Routine routine;
  const CompletionScreen({super.key, required this.routine});

  @override
  State<CompletionScreen> createState() => _CompletionScreenState();
}

class _CompletionScreenState extends State<CompletionScreen> {
  int? feeling;
  int streak = 0;

  @override
  void initState() {
    super.initState();
    // record the session once, when the screen appears
    FileaApp.progressOf(context, listen: false)
        .completeSession(widget.routine.totalMinutes)
        .then((s) => setState(() => streak = s));
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              // swap for celebration.png (Léa + Fil) when assets arrive
              const OneLineFigure(
                  variant: 1, color: FileaColors.softGold, size: 160),
              const SizedBox(height: 20),
              Text('Nicely done 🌿', style: t.displaySmall),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _Stat('${widget.routine.totalMinutes}', 'min'),
                  _Stat('${widget.routine.poses.length}', 'stretches'),
                  _Stat('$streak', 'day streak'),
                ],
              ),
              const SizedBox(height: 28),
              Text('How do you feel now?', style: t.titleMedium),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                children: List.generate(3, (i) {
                  const labels = ['Looser', 'Same', 'Amazing'];
                  final selected = feeling == i;
                  return ChoiceChip(
                    label: Text(labels[i]),
                    selected: selected,
                    onSelected: (_) => setState(() => feeling = i),
                    selectedColor: FileaColors.sage,
                    labelStyle: TextStyle(
                        color:
                            selected ? Colors.white : FileaColors.inkMoss),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: FileaColors.paleMist),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  );
                }),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                child: const Text('Done'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value, label;
  const _Stat(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Column(children: [
      Text(value, style: t.headlineMedium?.copyWith(color: FileaColors.sage)),
      Text(label, style: t.bodySmall),
    ]);
  }
}
