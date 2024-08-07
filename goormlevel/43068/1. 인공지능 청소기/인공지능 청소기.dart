import 'dart:io';
void main() {
	var testCaseLengthLine = stdin.readLineSync()!;
	var testCaseLength = int.parse(testCaseLengthLine);
	
	List<String> testCaseList = [];
	
	for (int i = 0; i < testCaseLength; i++) {
		var testCaseLine = stdin.readLineSync()!;
		
		testCaseList.add(testCaseLine);
	}
	
	for (var testCase in testCaseList) {
		var targetXPosition = int.parse(testCase.split(' ')[0]);
		var targetYPosition = int.parse(testCase.split(' ')[1]);
		
		var distanceCount = int.parse(testCase.split(' ')[2]);
		
		// (0,0) 에서 테스트 케이스에 기재된 좌표로 이동할 수 있는 최단 거리 값
		var minDistancePosition = (targetXPosition < 0 ? -targetXPosition : targetXPosition) + (targetYPosition < 0 ? -targetYPosition : targetYPosition);
		
		// 입력받은 이동거리가 최단 거리보다 작을 경우 이동 불가
		if (distanceCount < minDistancePosition) { 
			print('NO');
		} 
		// 입력받은 이동거리가 최단 거리와 같을 경우 이동 가능
		else if (distanceCount == minDistancePosition) {
			print('YES');
		} 
		// 이동 가능한 거리 값은 최단 거리의 + 2n 값이다. (이동 가능한 거리값을 구하는 이 공식은 유추를 통해 구해서, 정확한 이유를 알아야 함)
		// 그래서 입력받은 이동거리에서 최단 거리를 뺀 후 2로 나누었을때 나머지가 0일 경우 이동 가능하다.
		else if ((distanceCount - minDistancePosition) % 2 == 0) {
			print('YES');
		} 
		// 이 외에 경우 이동 불가
		else {
			print('NO');
		}
	}
}
