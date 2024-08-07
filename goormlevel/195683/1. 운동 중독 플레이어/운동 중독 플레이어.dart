import 'dart:io';
void main() {
	var line = stdin.readLineSync()!;
	
	// 유저가 들어올린 무게
	var weight = int.parse(line.split(' ')[0]);
	
	// 유저가 반복해서 든 횟수
	var repetitions = int.parse(line.split(' ')[1]);
	
	// 해당 유저의 1RM
	var oneRM = (1 + (repetitions / 30)) * weight;
	
	print(oneRM.floor());
}