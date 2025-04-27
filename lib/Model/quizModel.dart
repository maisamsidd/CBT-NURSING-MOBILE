class QuizModel {
  String? qId;
  String? question;
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  String? correctOption;

  QuizModel({
    this.qId,
    this.question,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.correctOption,
  });

  QuizModel.fromJson(Map<String, dynamic> json) {
    qId = json['qId'];
    question = json['question'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    correctOption = json['correctOption'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qId'] = qId;
    data['question'] = question;
    data['option1'] = option1;
    data['option2'] = option2;
    data['option3'] = option3;
    data['option4'] = option4;
    data['correctOption'] = correctOption;
    return data;
  }
}
