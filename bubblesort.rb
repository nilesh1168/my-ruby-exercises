def bubble_sort(arr)
    size = arr.length - 1
    for i in 0..size do
        p arr
        for j in 0..(size-1) do
            if arr[j] > arr[j+1]
                temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            end
        end
    end
    return arr
end

p bubble_sort([4,3,78,2,0,2])