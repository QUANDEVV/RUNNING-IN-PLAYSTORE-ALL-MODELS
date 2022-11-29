class Port {
  String? name;
  String? icon;
  // Color? color;
  String? imgName;
  String? imgName2;

  List<Port>? subCategories;

  Port(
      {this.name,
      this.icon,
      // this.color,
      this.imgName,
      this.imgName2,

      // this.categories,
      this.subCategories});
}


class SubCategory extends Port {
  SubCategory({
    
    String? name,
    String? icon,
    String? imgName 
  }): super(
    name: name,
    icon: icon,

    imgName: imgName
  );


}
class Names {
  static List<Port> getMockedCategories() {
    return [
      Port(name: "KOCHA", imgName: '1', imgName2: '1', 
      subCategories: 
      [SubCategory(name: "taiwan",imgName: 'gina (1)'),SubCategory(name: "taiwan",imgName: 'gina (2)'),SubCategory(name: "taiwan",imgName: 'gina (3)'),SubCategory(name: "taiwan",imgName: 'gina (4)'),SubCategory(name: "taiwan",imgName: 'gina (5)'),SubCategory(name: "taiwan",imgName: 'gina (6)'),SubCategory(name: "taiwan",imgName: 'gina (7)'),SubCategory(name: "taiwan",imgName: 'gina (8)'),SubCategory(name: "taiwan",imgName: 'gina (9)'),               ]),



      Port(name: "KOCHA", imgName: '2', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '2'),]),
      Port(name: "KOCHA", imgName: '3', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '3'),]),
      Port(name: "KOCHA", imgName: '4', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '4'),]),
      Port(name: "KOCHA", imgName: '5', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '5'),]),
      Port(name: "KOCHA", imgName: '6', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '6'),]),
      Port(name: "KOCHA", imgName: '7', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '7'),]),
      Port(name: "KOCHA", imgName: '8', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '8'),]),
      Port(name: "KOCHA", imgName: '9', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '9'),]),
      Port(name: "KOCHA", imgName: '10', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '10'),]),
      Port(name: "KOCHA", imgName: '11', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '11'),]),
      Port(name: "KOCHA", imgName: '12', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '12'),]),
      Port(name: "KOCHA", imgName: '13', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '13'),]),
      Port(name: "KOCHA", imgName: '14', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '14'),]),
      Port(name: "KOCHA", imgName: '15', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '15'),]),
      Port(name: "KOCHA", imgName: '16', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '16'),]),
      Port(name: "KOCHA", imgName: '17', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '17'),]),
      Port(name: "KOCHA", imgName: '18', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '18'),]),
      Port(name: "KOCHA", imgName: '19', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '19'),]),
      Port(name: "KOCHA", imgName: '20', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '20'),]),
      Port(name: "KOCHA", imgName: '21', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '21'),]),
      Port(name: "KOCHA", imgName: '22', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '22'),]),
      Port(name: "KOCHA", imgName: '23', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '23'),]),
      Port(name: "KOCHA", imgName: '24', imgName2: '1', subCategories: [SubCategory(name: "taiwan",imgName: '24'),]),

    ];
  }
}
