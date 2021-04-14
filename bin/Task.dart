class Task {
  int id;
   String name;
   String categories;
   bool isRepeat;


   Task(int id, String name, String categories) {
    this.id = id;
    this.name = name;
    this.categories = categories;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          categories == other.categories;

  @override
  int get hashCode => name.hashCode ^ categories.hashCode;
}
