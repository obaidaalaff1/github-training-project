class PersonalInfo {
  final String name;
  final String title;
  final String university;
  final String email;
  final List<String> skills;

  const PersonalInfo({
    required this.name,
    required this.title,
    required this.university,
    required this.email,
    required this.skills,
  });
}

const myInfo = PersonalInfo(
  name: 'Obaida',
  title: 'Mobile Developer (Flutter & Android)',
  university: 'University College of Applied Sciences (UCAS)',
  email: 'obaida@example.com',
  skills: ['Flutter', 'Dart', 'Android (Java)', 'Supabase', 'Firebase', 'Git'],
);