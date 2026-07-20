import 'package:flutter/material.dart';
import '../models/models.dart';
import '../services/recommender.dart';
import '../theme/filea_theme.dart';
import 'routine_detail_screen.dart';

/// The Filea differentiator — asks how you feel, picks today's routine.
class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  int? stiffness, energy, sleep;

  bool get complete => stiffness != null && energy != null && sleep != null;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('How do you feel today?', style: t.displaySmall),
              const SizedBox(height: 8),
              Text('Three taps — Léa finds the right routine for you.',
                  style: t.bodySmall),
              const SizedBox(height: 28),
              _ChipGroup(
                label: 'Stiffness',
                options: const ['Loose', 'A little stiff', 'Very stiff'],
                selected: stiffness,
                onSelect: (i) => setState(() => stiffness = i),
              ),
              _ChipGroup(
                label: 'Energy',
                options: const ['Low', 'Okay', 'Energized'],
                selected: energy,
                onSelect: (i) => setState(() => energy = i),
              ),
              _ChipGroup(
                label: 'Sleep',
                options: const ['Poor', 'Fine', 'Great'],
                selected: sleep,
                onSelect: (i) => setState(() => sleep = i),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: complete
                    ? () {
                        final routine =
                            recommend(CheckIn(stiffness!, energy!, sleep!));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  RoutineDetailScreen(routine: routine)),
                        );
                      }
                    : null,
                child: const Text('Find my routine'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChipGroup extends StatelessWidget {
  final String label;
  final List<String> options;
  final int? selected;
  final ValueChanged<int> onSelect;

  const _ChipGroup(
      {required this.label,
      required this.options,
      required this.selected,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: List.generate(options.length, (i) {
              final isSelected = selected == i;
              return ChoiceChip(
                label: Text(options[i]),
                selected: isSelected,
                onSelected: (_) => onSelect(i),
                selectedColor: FileaColors.sage,
                labelStyle: TextStyle(
                    color: isSelected ? Colors.white : FileaColors.inkMoss),
                backgroundColor: Colors.white,
                side: const BorderSide(color: FileaColors.paleMist),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              );
            }),
          ),
        ],
      ),
    );
  }
}
