#include <iostream>
#include <vector>
using namespace std;

// hw 0.1
int foo1(int theAnswer) {
    if (theAnswer == 42)
      return 5;
    else return 0;
}


// hw 0.2
void foo2(void) {
    string name;
    cin >> name;
    cout << name << " is awesome";
}

// hw 0.3
void foo3(void) {
    string name;
    int answer;
    while (cin >> name >> answer) {
	if (answer == 42)
	    cout << name << " is awesome" << endl;
    }
}

// https://stackoverflow.com/a/10758845
void print_answers(vector<int> answers) {
    // for (auto i = answers.begin(); i != answers.end(); ++i)
    for (int answer: answers)
	cout << answer << ' ';
}

bool copied_answer(int answer, vector<int> answers) {
    for (int prev : answers) {
	if (answer == prev)
	    return true;
    }
    return false;
}

// hw 0.4
void foo4(void) {
    string name;
    int answer;
    vector<int> answers;
    while (cin >> name >> answer) {
	if (copied_answer(answer, answers)) {
	    cout << name << " copies work" << endl;
	    exit(1);
	}
	answers.push_back(answer);
    }
}

const int n_registers=8; // number of "registers" in our array

void check_register(int reg) {
    if (reg < 0 || reg >= n_registers) {
	cout << "invalid register " << reg << endl;
	exit(1);
    }
}

// hw 0.5
long foo5(void) {
    int registers[n_registers]={0}; // array storing the register values
    int current=0; // current register number

    string opcode;
    int operand;

    while (cin >> opcode >> operand && opcode != "return") {
	if (opcode == "load")
	    registers[current] = operand;
	else if (opcode == "add")
	    registers[current] += operand;
	else if (opcode == "usereg") {
	    check_register(operand);
	    current = operand;
	} else {
	    cout << "invalid opcode " << opcode << endl;
	    exit(1);
	}
    }

    check_register(operand);
    return registers[operand];
}

// hw 0.6
int foo6(int bar) {
    int round10=bar/10*10; // bad ones are multiples of ten

    if (bar==round10) {
	bar=bar+1; // fix it
    }

    return bar;
}

// related to brain teaser from hw 0.0
int extra() {
    long x=0xabcdf127;
    cout << x << endl;
    long y=0x54320ede;
    cout << y << endl;
    return x+y;
}

int main() {
    // cout << foo1(42) << endl;
    // cout << foo1(41) << endl;
    // foo2();
    // foo3();
    // foo4();
    // cout << foo5() << endl;
    // cout << foo6(5) << endl;
    // cout << foo6(10) << endl;
    cout << extra() << endl;
    return 0;
}
  
