import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rsue_schedule/blocs/settings_bloc/settings_bloc.dart';
import 'package:rsue_schedule/screens/auditorium_screen.dart';
import 'package:rsue_schedule/screens/schedule_screen.dart';
import 'package:rsue_schedule/screens/settings_screen.dart';
import 'package:rsue_schedule/screens/teachers_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _screens = [];
  int _currentIndex = 0;

  @override
  void initState() {
    final bloc = context.read<SettingsBloc>();
    _screens.add(ScheduleScreen({'group': bloc.settings.group}));
    _screens.add(TeacherScreen(bloc));
    _screens.add(const AuditoriumScreen());
    _screens.add(SettingsScreen(bloc));
    super.initState();
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_work_outlined),
            label: 'Дом',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Преподаватели',
          ),
          NavigationDestination(
            icon: Icon(Icons.meeting_room_rounded),
            label: 'Аудитории',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          )
        ],
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: _currentIndex,
      ),
    );
  }
}
