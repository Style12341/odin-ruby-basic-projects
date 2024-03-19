def bubble_sort(arr)
  # Your code here
  noChanges = false;
  until noChanges
    noChanges = true;
    for i in 0..arr.length - 2
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        noChanges = false;
      end
    end
  end
  arr
end