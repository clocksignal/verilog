import InvalidPermutationException


def factorial(n):
    """returns the factorial of n"""

    if n == 0:
        return 1
    elif n < 0:
        raise InvalidPermutationException

    return n * factorial(n - 1)


def deep_sum(lst):
    shallow_sum = 0
    for i in lst:
        if isinstance(i, list):
            shallow_sum += deep_sum(i)
            continue
        shallow_sum += i
    return shallow_sum


def deep_sum2(lst, n):
    if n == 0:
        return 0
    last = lst.pop()
    if isinstance(last, list):
        last = deep_sum2(last,
                         len(last))  # променям референцията от list към int; не знам как се решава, ако това не е позволено

    return last + deep_sum2(lst, len(lst))


def is_closed(seq, n):
    if n == 0:
        return True

    if n % 2 != 0:
        return False

    if seq[n - 2] == ')':
        seq.replace(seq[n - 1], '')
        is_closed(seq, n - 1)


if __name__ == '__main__':

    print(factorial(5))  # 120
    print(factorial(0))  # 1
    try:
        print(factorial(-1))  # очаквам InvalidPermutationException
    except TypeError:  # Ако сложа InvalidPermutationException вместо TypeError дава:
        # TypeError: catching classes that do not inherit from BaseException is not allowed
        print("Неграмотен съм")

    print('##################################################')

    ugly = [1, 2, 3, [5, 6, [7]], 4]
    uglier = [[1], [22], [5, [25, [], 6, [7]]], [2, [1, [0]]]]
    ugliest = [[[1], [[22], [5, [25, 6, [[[[[[[[[[]]]]]]]]]], [7]]]], [1, [1, [1]]]]]

    print(deep_sum(ugly))  # 28
    print(deep_sum(uglier))  # 69
    print(deep_sum(ugliest))  # 69

    print('###################################################')

    print(deep_sum2(ugly, len(ugly)))  # 28
    print(deep_sum2(uglier, len(uglier)))  # 69
    print(deep_sum2(ugliest, len(ugliest)))  # 69

    print('###################################################')

    print(is_closed('(())', 4))
