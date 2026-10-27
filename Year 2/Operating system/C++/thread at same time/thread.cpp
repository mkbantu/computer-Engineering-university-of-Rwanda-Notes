#include <iostream>
#include <thread>

using namespace std;

int balance = 1000;

void deposit(int amount) {
    balance = balance + amount;
}

int main() {
    thread t1(deposit, 100);
    thread t2(deposit, 50);

    t1.join();
    t2.join();

    cout << balance;
}