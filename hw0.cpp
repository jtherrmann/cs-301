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

int main() {
    // cout << foo1(42) << endl;
    // cout << foo1(41) << endl;
    // foo2();
    // foo3();
    foo4();
    return 0;
}
  
