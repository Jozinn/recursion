def fibs(n)
    series = []
    a = 0
    b = 1
    series << a
    series << b
    return series if n <= 2
    (n - 2).times do
        c = a + b
        a = b
        b = c
        series << b
    end
    return series
end

def fibs_req(n)
    series = [0]
    return 0 if n == 1
    return series if n == 2
    series = fibs_req(n-1)
    series << series[-1] + series[-2]
    return series
end