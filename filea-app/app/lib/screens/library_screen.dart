import 'package:flutter/material.dart';
import '../data/library.dart';
import '../models/models.dart';
import 'routine_detail_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text('Library', style: t.displaySmall),
        const SizedBox(height: 16),
        ...routineLibrary.map((r) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Card(
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => RoutineDetailScreen(routine: r))),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        // category accent as thin left thread
                        Container(
                          width: 3,
                          height: 48,
                          decoration: BoxDecoration(
                            color: r.category.accent,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('⊕ ${r.name}', style: t.titleMedium),
                              const SizedBox(height: 4),
                              Text(
                                  '${r.totalMinutes} min · ${r.poses.length} stretches · ${r.difficulty}',
                                  style: t.bodySmall),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded, size: 14),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
