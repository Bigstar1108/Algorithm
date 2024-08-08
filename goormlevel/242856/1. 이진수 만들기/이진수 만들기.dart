import 'dart:io';

/**
* 10진법에서 2진법으로 변환 방법.
* 1. 몫이 1이 되어 더 이상 나누어지지 않을때까지 나눈다.
* 2. 끝까지 나눈 후 몫1부터 역순으로 써주면 2진수로 변환이 된다.
* 참고 포스트 링크 (https://m.blog.naver.com/icbanq/221727893563)
*/
void main() {
	var line = stdin.readLineSync()!;
	
	var number = int.parse(line);
	var result = '';
	
	while(true) {
		// 몫
		var quotient = number ~/ 2;
		// 나머지
		var remainder = number % 2;
		
		if (quotient < 1) {
			result = '${remainder}${result}';
			break;
		} else if (quotient == 1) {
			result = '${quotient}${remainder}${result}';
			break;
		} else {
			result = '${remainder}${result}';
		}
		
		number = quotient;
	}
	
	print(result);
}