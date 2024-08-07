import 'dart:io';
void main() {
	var foodInputLine = stdin.readLineSync()!;
	var dayInputLine = stdin.readLineSync()!;
	
	var goormFoodCount = int.parse(foodInputLine.split(' ')[0]);
	var baramFoodCount = int.parse(foodInputLine.split(' ')[1]);
	
	var day = int.parse(dayInputLine);
	
	for (int i = 0; i < day; i++) {
		var isGoormTurn = i % 2 == 0;
		
		if (isGoormTurn) {
			// 구름이 바람에게 줘야하는 음식의 양
			var amountOfFood = (goormFoodCount / 2).round();
			
			goormFoodCount -= amountOfFood;
			baramFoodCount += amountOfFood;
		} else {
			// 바람이 구름에게 줘야하는 음식의 양
			var amountOfFood = (baramFoodCount / 2).round();
			
			goormFoodCount += amountOfFood;
			baramFoodCount -= amountOfFood;
		}
	}
	
	print('${goormFoodCount} ${baramFoodCount}');
}