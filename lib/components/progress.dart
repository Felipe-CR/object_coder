class Progress {
  String name;
  double completedPercentage;
  String images;

  Progress({
    required this.name,
    required this.completedPercentage,
    required this.images,
  });
}

List<Progress> progress =[
  Progress(
      name: "Clases",
      completedPercentage: .80,
      images: "assets/images/Clases.png"
  ),
  Progress(
    name: "Herencia",
    completedPercentage: .0,
    images: "assets/images/Herencia.png"
  ),
  Progress(
    name: "Objetos",
    completedPercentage: .0,
    images: "assets/images/Objetos.png"
  ),
  Progress(
    name: "Paralelismo",
    completedPercentage: .0,
    images: "assets/images/Paralelismo.png"
  ),
  Progress(
    name: "Encapsulamiento",
    completedPercentage: .0,
    images: "assets/images/Encapsulamiento.png"
  ),
  Progress(
    name: "Threads",
    completedPercentage: .0,
    images: "assets/images/Threads.png"
  )
];