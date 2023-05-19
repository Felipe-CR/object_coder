class Certificates {
  String name;
  String duration;
  bool isPlaying;
  bool isCompleted;

  Certificates({
    required this.name,
    required this.duration,
    required this.isPlaying,
    required this.isCompleted,
  });
}


List<Certificates> certificates = [
  Certificates(
    name: "Clases",
    duration: "10 lecciones",
    isPlaying: true,
    isCompleted: true,
  ),
  Certificates(
    name: "Herencia",
    duration: "10 lecciones",
    isPlaying: false,
    isCompleted: false,
  ),
  Certificates(
    name: "Objetos",
    duration: "10 lecciones",
    isPlaying: false,
    isCompleted: false,
  ),
  Certificates(
    name: "Paralelismo",
    duration: "10 lecciones",
    isPlaying: false,
    isCompleted: false,
  ),
  Certificates(
    name: "Encapsulamiento",
    duration: "10 lecciones",
    isPlaying: false,
    isCompleted: false
  ),
  Certificates(
    name: "Threads",
    duration: "10 lecciones",
    isPlaying: false,
    isCompleted: false,
  ),
];