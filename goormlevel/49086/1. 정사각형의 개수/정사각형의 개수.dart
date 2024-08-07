import 'dart:io';
import 'dart:math';
void main() {
	var line = stdin.readLineSync()!;
	
	// 변의 길이 N
	var sideLength = int.parse(line);
	
	// 정사각형의 총 개수
	var totalCount = 0;
	
	// 길이가 1 ~ N 까지 나올 수 정사각형의 개수는, 한 변에서 나올 수 있는 최대 정사각형 개수의 제곱이다.
	// 그리고 1 ~ N 까지 나올 수 있는 최대 정사각형의 개수는 (변의 길이 N - (길이 - 1)) 로 유추할 수 있다.
	// 이유는 최대 변의 길이의 역순으로 최대 정사각형의 개수가 나온다.
	// ex) 최대 변의 길이가 5일 경우 아래와 같이 나온다.
	// 1 > 5
	// 2 > 4
	// 3 > 3
	// 4 > 2
	// 5 > 1
	for (int i = 1; i <= sideLength; i++) {
		totalCount += pow((sideLength - (i - 1)), 2).toInt();
	}
	
	print(totalCount);
}