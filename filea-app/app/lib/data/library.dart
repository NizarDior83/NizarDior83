import '../models/models.dart';

/// MVP content library — 5 core categories per BUILD_PLAN.md.
/// Durations in seconds. figureVariant picks the placeholder drawing (0-2).
const List<Routine> routineLibrary = [
  Routine(
    id: 'wake_up',
    name: 'Wake Up',
    category: RoutineCategory.wakeUp,
    description:
        'A quick daily routine to maintain your natural mobility and range of motion. Anytime, anywhere.',
    difficulty: 'Beginner',
    poses: [
      Pose('reach_up', 'Morning Reach', 'Reach both arms up and lengthen through your sides.', 30, 0),
      Pose('neck_release', 'Neck Release', 'Let your ear ease toward your shoulder. Breathe.', 30, 1),
      Pose('shoulder_rolls', 'Shoulder Rolls', 'Roll your shoulders slowly back and down.', 30, 0),
      Pose('side_bend', 'Standing Side Bend', 'Arc gently to one side, then the other.', 40, 0),
      Pose('cat_cow', 'Cat-Cow', 'Alternate arching and rounding your spine with your breath.', 45, 2),
      Pose('forward_fold', 'Forward Fold', 'Hinge forward and let your arms hang heavy.', 40, 2),
    ],
  ),
  Routine(
    id: 'posture_reset',
    name: 'Posture Reset',
    category: RoutineCategory.postureReset,
    description:
        'Seated stretches that correct habitual posture problems by opening the shoulders, back, and neck.',
    difficulty: 'Beginner',
    poses: [
      Pose('chin_tucks', 'Chin Tucks', 'Draw your chin gently back — imagine growing taller.', 30, 1),
      Pose('chest_opener', 'Chest Opener', 'Clasp hands behind you and lift your chest.', 40, 0),
      Pose('neck_release', 'Neck Release', 'Ease your ear toward your shoulder. Switch halfway.', 40, 1),
      Pose('seated_twist', 'Seated Twist', 'Rotate gently from your waist. Switch halfway.', 45, 1),
      Pose('shoulder_rolls', 'Shoulder Rolls', 'Slow circles — release the desk tension.', 30, 0),
      Pose('upper_back', 'Upper-Back Reach', 'Round forward, reach ahead, and breathe into your back.', 40, 2),
    ],
  ),
  Routine(
    id: 'full_body',
    name: 'Full Body',
    category: RoutineCategory.fullBody,
    description:
        'Improve overall flexibility with stretches that target key muscles and joints throughout the body.',
    difficulty: 'Intermediate',
    poses: [
      Pose('reach_up', 'Overhead Reach', 'Lengthen tall through your whole body.', 30, 0),
      Pose('forward_fold', 'Forward Fold', 'Hinge and hang. Soften your knees.', 45, 2),
      Pose('low_lunge', 'Low Lunge', 'Step one foot forward, sink your hips. Switch halfway.', 60, 2),
      Pose('hamstring_fold', 'Hamstring Fold', 'Extend one leg and fold gently over it. Switch halfway.', 60, 2),
      Pose('cat_cow', 'Cat-Cow', 'Move your spine with your breath.', 45, 2),
      Pose('child_pose', "Child's Pose", 'Sink back onto your heels and rest.', 45, 2),
      Pose('seated_twist', 'Seated Twist', 'Gentle rotation, both sides.', 45, 1),
      Pose('side_bend', 'Side Bend', 'Long arcs to each side.', 40, 0),
    ],
  ),
  Routine(
    id: 'sleep',
    name: 'Sleep',
    category: RoutineCategory.sleep,
    description:
        'Gentle, long-hold stretches to unwind after a long day — relieve tension, relax, and sleep better.',
    difficulty: 'Gentle',
    poses: [
      Pose('child_pose', "Child's Pose", 'Sink down, forehead resting. Long slow breaths.', 90, 2),
      Pose('supine_twist', 'Supine Twist', 'Knees drop to one side, arms wide. Switch halfway.', 90, 1),
      Pose('knee_to_chest', 'Knee to Chest', 'Hug your knees softly toward you.', 60, 1),
      Pose('legs_up', 'Legs Up', 'Rest your legs up against the wall. Let everything go.', 120, 1),
    ],
  ),
  Routine(
    id: 'hips',
    name: 'Hips',
    category: RoutineCategory.hips,
    description:
        'Open and unlock tight hips with deep, focused stretches that undo hours of sitting.',
    difficulty: 'Beginner',
    poses: [
      Pose('low_lunge', 'Low Lunge', 'Sink your hips forward and down. Switch halfway.', 60, 2),
      Pose('figure_four', 'Figure Four', 'Ankle over knee, ease into the hip. Switch halfway.', 60, 1),
      Pose('butterfly', 'Butterfly', 'Soles together, knees heavy, fold gently forward.', 60, 1),
      Pose('pigeon', 'Pigeon Prep', 'One shin forward, hips square, breathe. Switch halfway.', 80, 2),
      Pose('child_pose', "Child's Pose", 'Rest and let the hips settle.', 45, 2),
    ],
  ),
];

Routine routineById(String id) =>
    routineLibrary.firstWhere((r) => r.id == id, orElse: () => routineLibrary.first);
