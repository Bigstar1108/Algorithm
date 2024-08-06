# 해당 문제를 python으로 해결한 이유는,
# dart 언어에서 지원하는 int의 Max 값이 해당 문제 테스트 케이스에서 나오는 값보다 작아 해결 불가함.
# https://pub.dev/documentation/fixnum/latest/fixnum/Int64/MAX_VALUE-constant.html (dart 언어의 int max 값 참고 링크)
# 아래는 dart 언어로 구현했을 경우 정답 코드 입니다.

# import 'dart:io';
# import 'dart:math';

# void main() {
#  var line = stdin.readLineSync()!;
#
#  var totalDiceCount = int.parse(line);
#	 var totalVolume = pow(((totalDiceCount + 1) * totalDiceCount) ~/ 2, 2);
#
#	 print(totalVolume % 1000000007);
# }

# -*- coding: utf-8 -*-
# UTF-8 encoding when using korean
user_input = input()

# 유저에게 입력받은 총 주사위 개수
totalDiceCount = int(user_input)

# 주사위의 부피의 합
# 자연수 거듭제곱의 합 공식을 사용
# 반복문으로 코드를 구현 할 경우, 연산에 오랜 시간이 들어 (timeout) 해당 공식을 사용
# https://sseong40.tistory.com/9 (공식 참고 사이트 링크)
totalVolume = (((totalDiceCount + 1) * totalDiceCount) // 2) ** 2;

print(totalVolume % 1000000007)
