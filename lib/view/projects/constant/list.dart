class Project {
  final String image;
  final String link;
  Project(
      {
      required this.image,
      required this.link});
}

class ProjectData {
  String label;
  bool isSelected;

  ProjectData({required this.label, this.isSelected = false});
}

List<Project> allProjects = [
  Project(
      image: 'assets/projects/quickadd.png',
      link: 'https://github.com/TeaCoded/QuickAdd'),
  Project(
      image: 'assets/projects/gst.png',
      link: 'https://github.com/TeaCoded/QuickGST'),
  Project(
      image: 'assets/projects/student_percentage.png',
      link: 'https://github.com/TeaCoded/Student-Percentage-Calculator'),
  Project(
      image: 'assets/projects/gst_Cal.png',
      link: 'https://github.com/TeaCoded/GST-Calculator'),
  Project(
      image: 'assets/projects/weather.png',
      link: 'https://github.com/TeaCoded/Weather-Sphere'),
];
