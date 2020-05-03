#include<iostream>
using namespace std;

int main () 
{
    int age;
    cout << "age: ";
    cin >> age;
    cout << "Your age: " << age << endl;
    if (age >= 18) 
    {
        cout << "You can go." << endl;
    }
    else if (age >= 1)
    {
        cout << "Sorry you cannot go." << endl;
    }
    else
    {
        cout << "Error" << endl; 
    }
    system("pause");

    return 0;
}