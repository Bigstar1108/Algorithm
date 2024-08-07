import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	var totalCharLength = line.split(' ').where((v) => v != '').length;
	print(totalCharLength);
}