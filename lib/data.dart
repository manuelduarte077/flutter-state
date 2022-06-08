const courses = [
  'Math',
  'English',
  'Art',
  'Programming',
  'Spanish',
  'Dancing',
];

Future<List<String>> getCourses() async {
  print('loading courses...');
  await Future.delayed(const Duration(seconds: 3));
  return courses;
}
