import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	// 1 카운트 수
	int numberOneCount = 0;

	// 대문자 I 카운트 수
	int alphabetICount = 0;

	// 소문자 l 카운트 수
	int alphatbetLCount = 0;

	// | 카운트 수
	int specialCharacterCount = 0;

	for (int i = 0; i < line.length; i++) {
		var targetText = line[i];

		if (targetText == '1') {
			numberOneCount++;
		} else if (targetText == 'I') {
			alphabetICount++;
		} else if (targetText == 'l') {
      alphatbetLCount++;
    } else if (targetText == '|') {
      specialCharacterCount++;
    } else {
      continue;
    }
  }

  print('${numberOneCount}\n${alphabetICount}\n${alphatbetLCount}\n${specialCharacterCount}');
}