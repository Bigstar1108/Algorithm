import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	var totalLineLength = int.parse(line);
	
	for (int i = totalLineLength; i > 0; i--) {
		print('*' * i);
	}
}