import 'package:flutter/material.dart';
import '../data/library.dart';
import '../models/models.dart';
import '../services/progress_service.dart';
import '../services/recommender.dart';
import '../theme/filea_theme.dart';
import '../widgets/one_line_figure.dart';
import 'checkin_screen.dart';
import 'library_screen.dart';
import 'routine_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final ProgressService progress;
  const HomeScreen({super.key, required this.progress});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tab = 0;

  String get greeting {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good morning 🌿';
    if (h < 18) return 'Good afternoon 🌿';
    return 'Good evening 🌙';
  }

  @override
  Widget build(BuildContext context) {
    final pages = [_homeTab(), const LibraryScreen()];
    return Scaffold(
      body: SafeArea(child: pages[tab]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (i) => setState(() => tab = i),
        backgroundColor: Colors.white,
        indicatorColor: FileaColors.morningMist,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.self_improvement), label: 'Today'),
          NavigationDestination(icon: Icon(Icons.grid_view_rounded), label: 'Library'),
        ],
      ),
    );
  }

  Widget _homeTab() {
    final t = Theme.of(context).textTheme;
    final today = defaultForNow();
    final p = widget.progress;

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(greeting, style: t.displaySmall),
        // the thread underlines the greeting — signature element
        Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 20),
          child: Container(
            height: 2,
            width: 80,
            decoration: BoxDecoration(
                color: FileaColors.sage,
                borderRadius: BorderRadius.circular(2)),
            alignment: Alignment.centerLeft,
          ),
        ),

        // Check-in card — the differentiator, one tap from home
        Card(
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const CheckInScreen())),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  const OneLineFigure(
                      variant: 1, color: FileaColors.sage, size: 64),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('How do you feel?', style: t.titleMedium),
                        const SizedBox(height: 4),
                        Text('Check in and get today\'s routine',
                            style: t.bodySmall),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios_rounded,
                      size: 16, color: FileaColors.stoneGrey),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Suggested-for-now hero card
        Card(
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => RoutineDetailScreen(routine: today))),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SUGGESTED FOR NOW',
                      style: t.bodySmall?.copyWith(
                          letterSpacing: 1.2, color: today.category.accent)),
                  const SizedBox(height: 8),
                  Text(today.name, style: t.headlineMedium),
                  const SizedBox(height: 4),
                  Text(
                      '${today.totalMinutes} min · ${today.poses.length} stretches · ${today.difficulty}',
                      style: t.bodySmall),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),

        Text('Routines', style: t.titleMedium),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.35,
          children: routineLibrary
              .map((r) => _CategoryTile(routine: r))
              .toList(),
        ),
        const SizedBox(height: 24),

        // Gentle stats — consistency, not intensity
        Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _Stat(value: '${p.streak}', label: 'day streak'),
                _Stat(value: '${p.sessions}', label: 'sessions'),
                _Stat(value: '${p.minutes}', label: 'minutes'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoryTile extends StatelessWidget {
  final Routine routine;
  const _CategoryTile({required this.routine});

  @override
  Widget build(BuildContext context) {
    final accent = routine.category.accent;
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => RoutineDetailScreen(routine: routine))),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: accent.withOpacity(0.12),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('⊕', style: TextStyle(color: accent, fontSize: 18)),
            const Spacer(),
            Text(routine.name,
                style: Theme.of(context).textTheme.titleMedium),
            Text('${routine.totalMinutes} min',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value, label;
  const _Stat({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Column(children: [
      Text(value, style: t.headlineMedium?.copyWith(color: FileaColors.sage)),
      Text(label, style: t.bodySmall),
    ]);
  }
}
