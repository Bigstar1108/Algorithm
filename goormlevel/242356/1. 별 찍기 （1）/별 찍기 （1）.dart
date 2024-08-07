import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	var totalLineLength = int.parse(line);
	
	for (int i=0; i<totalLineLength; i++) {
		print('*' * (i + 1));
	}
}