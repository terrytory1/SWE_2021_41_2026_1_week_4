FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
    arr = set()\n\
    while n != 1 and n not in arr:\n\
        arr.add(n)\n\
        total_sum = 0\n\
        for num in str(n):\n\
            total_sum += int(num) ** 2\n\
        n = total_sum\n\
    return n == 1\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]