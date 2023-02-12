import 'dart:io';
import 'dart:math';

void main() {

  List m = ['Rock', 'Paper', 'Scissors'];
  int userWin =0;
  int compWin =0;


  do{
    Random random = new Random();
    int randomNumber = random.nextInt(m.length);

    print('-------------------------------------------');
    print('Choose a number  \n1) Rock \n2)Paper \n3)Scissors \nYour choice:');
    int choice = int.parse(stdin.readLineSync()!);


    if(choice == 1 || choice == 2 || choice == 3){
      if((choice-1) == randomNumber) {   
        print('Your choice: ${m.elementAt(choice-1)} \ncomputer choice: ${m.elementAt(randomNumber)} \nNo won!!!');
        print("your score: $userWin; comp score: $compWin");
    }else if ((choice == 1 && m.elementAt(randomNumber) == "Scissors") ||
    (choice == 2 && m.elementAt(randomNumber) == "Rock") ||
    (choice == 3 && m.elementAt(randomNumber) == "Paper")) {
      print('Your choice: ${m.elementAt(choice-1)} \ncomputer choice: ${m.elementAt(randomNumber)} \nYou won!!!');     
      userWin++;
      print("your score: $userWin; comp score: $compWin");
    }else {
      print('Your choice: ${m.elementAt(choice-1)} \ncomputer choice: ${m.elementAt(randomNumber)} \nComputer won!!!');     
      compWin++;
      print("your score: $userWin; comp score: $compWin");
    }
  }else {
    print('wrong choice...');
  }
  } while((userWin<3) && (compWin<3));

}
