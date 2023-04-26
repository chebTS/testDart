//{count: 124325, gender: female, name: lena, probability: 0.99}

class Info {
  int? count;
  String? gender;
  String? name;
  double? probability;

  Info({this.count, this.gender, this.name, this.probability});

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    gender = json['gender'];
    name = json['name'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['gender'] = this.gender;
    data['name'] = this.name;
    data['probability'] = this.probability;
    return data;
  }
}