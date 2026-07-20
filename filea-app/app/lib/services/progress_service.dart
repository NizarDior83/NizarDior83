import 'package:shared_preferences/shared_preferences.dart';

/// Local-first progress: gentle streaks, sessions, minutes.
class ProgressService {
  static const _kStreak = 'streak';
  static const _kLastDay = 'lastDay';
  static const _kSessions = 'sessions';
  static const _kMinutes = 'minutes';

  final SharedPreferences _prefs;
  ProgressService(this._prefs);

  static Future<ProgressService> load() async =>
      ProgressService(await SharedPreferences.getInstance());

  int get streak => _prefs.getInt(_kStreak) ?? 0;
  int get sessions => _prefs.getInt(_kSessions) ?? 0;
  int get minutes => _prefs.getInt(_kMinutes) ?? 0;

  String _today() {
    final now = DateTime.now();
    return '${now.year}-${now.month}-${now.day}';
  }

  String _yesterday() {
    final y = DateTime.now().subtract(const Duration(days: 1));
    return '${y.year}-${y.month}-${y.day}';
  }

  /// Called from the Completion screen. Streak grows once per day and
  /// survives if the last session was yesterday — no punishment culture.
  Future<int> completeSession(int routineMinutes) async {
    final last = _prefs.getString(_kLastDay);
    var s = streak;
    if (last == _today()) {
      // already counted today — keep streak as is
    } else if (last == _yesterday()) {
      s += 1;
    } else {
      s = 1;
    }
    await _prefs.setInt(_kStreak, s);
    await _prefs.setString(_kLastDay, _today());
    await _prefs.setInt(_kSessions, sessions + 1);
    await _prefs.setInt(_kMinutes, minutes + routineMinutes);
    return s;
  }
}
