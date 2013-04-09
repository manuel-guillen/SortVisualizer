class BozoSort extends Sort {
  
  boolean sorted;
  
  BozoSort(int[] arr) {
    super(arr);
    sorted = false;
    num = 7;
  }
  
  void sortStep() {
    if (sorted) return;
    
    int i = int(random(array.length-1));
    int j = int(random(array.length-1));
    swap(i,j);
    
    int a = 0;
    for (int x : array)
      if (x < a) {
        sorted = false;
        return;
      } else a = x;
    
  }
  
}
