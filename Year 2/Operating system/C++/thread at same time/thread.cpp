#include <iostream>
#include <thread>
#include <semaphore>
using namespace std;



counting_semaphore<1> sem(1);

int balance = 1000;

void deposit(int amount) {
    sem.acquire();      // wait()

    balance += amount;

    sem.release();      // signal()
}

int main() {
    std::thread t1(deposit, 100);
    std::thread t2(deposit, 50);

    t1.join();
    t2.join();

    cout << "Balance = " << balance << '\n';
}