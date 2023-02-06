def merge_sort(arr)
    sorted = []
    l = 0
    r = 0
    mid = arr.length % 2 == 0 ? (arr.length / 2 - 1) : arr.length / 2
    left_arr = arr[0..mid]
    rigth_arr = arr[(mid + 1)..-1]
    merge_sort(left_arr) if left_arr.length > 1
    merge_sort(rigth_arr) if rigth_arr.length > 1
    while l < left_arr.length && r < rigth_arr.length
        if left_arr[l] < rigth_arr[r]
            sorted << left_arr[l]
            l += 1
        else
            sorted << rigth_arr[r]
            r += 1
        end
    end
    return sorted
end