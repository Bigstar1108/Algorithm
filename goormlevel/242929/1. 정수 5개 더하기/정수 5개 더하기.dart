import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	var numberStrList = line.split(' ');
	
	int result = 0;
	
	for (int i = 0; i < 5; i++) {
		result += int.parse(numberStrList[i]);
	}
	
	print(result);
}