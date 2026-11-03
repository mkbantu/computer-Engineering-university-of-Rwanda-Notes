import threading

balance = 1000
lock = threading.Lock()
barrier = threading.Barrier(2)

def withdraw():
    global balance

    # Read the current balance
    current_balance = balance

    # Both customers read before either withdraws
    barrier.wait()

    # Withdraw 800
    balance = current_balance - 800

def withdraw_safely():
    global balance

    with lock:
        if balance >= 800:
            balance -= 800
            print("Withdrawal successful!")
        else:
            print("Insufficient funds!")

# Demonstrate the race condition
balance = 1000

t1 = threading.Thread(target=withdraw)
t2 = threading.Thread(target=withdraw)

t1.start()
t2.start()
t1.join()
t2.join()

print("Balance without lock:", balance)

# Solve the problem
balance = 1000

t1 = threading.Thread(target=withdraw_safely)
t2 = threading.Thread(target=withdraw_safely)

t1.start()
t2.start()
t1.join()
t2.join()

print("Balance with lock:", balance)