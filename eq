import java.util.Scanner;

public class SumOfSquares {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Введите числа через пробел:");
        String input = scanner.nextLine();
        
        // Разбиваем строку на отдельные числа
        String[] numbers = input.split(" ");
        int sum = 0;
        
        for (String number : numbers) {
            try {
                int num = Integer.parseInt(number);
                sum += num * num;  // Добавляем квадрат числа к сумме
            } catch (NumberFormatException e) {
                System.out.println("Ошибка: '" + number + "' не является числом и будет пропущено.");
            }
        }
        
        System.out.println("Сумма квадратов: " + sum);
    }
}
