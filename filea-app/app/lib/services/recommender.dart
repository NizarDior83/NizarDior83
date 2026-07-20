import '../data/library.dart';
import '../models/models.dart';

/// The Filea differentiator: check-in → today's routine.
/// Simple, explainable rules for the MVP.
Routine recommend(CheckIn c) {
  final hour = DateTime.now().hour;
  final isEvening = hour >= 20 || hour < 4;

  if (c.sleep == 0 && isEvening) return routineById('sleep');
  if (c.stiffness == 2) return routineById('full_body');
  if (c.energy == 0 && hour < 12) return routineById('wake_up');
  if (c.stiffness == 1) return routineById('hips');
  return routineById('posture_reset');
}

/// Fallback when no check-in yet: follow the day's arc.
Routine defaultForNow() {
  final hour = DateTime.now().hour;
  if (hour < 10) return routineById('wake_up');
  if (hour >= 20) return routineById('sleep');
  return routineById('posture_reset');
}
