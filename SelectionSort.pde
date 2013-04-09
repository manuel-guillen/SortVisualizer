class SelectionSort extends Sort {
  
  private int current;
  private int i,j;
  
  SelectionSort(int[] arr) {
    super(arr);
    current = 0;
    
    i = 0;
    j = i;
    
    num = 9;
  }
  
  void sortStep() {
    if (i+1 == array.length) return;
    
    if (current == array.length) {
      swap(i,j);
      i++;
      j = i;
      current = i;
    }
    
    if (array[current] < array[j]) j = current;
    current++;
    
  }
  
  void drawArray() {
    for (int n = 0; n < array.length; n++) {
      if (n == current) fill(0,0,255);
      else if (n == j) fill(255,0,0);
      else fill(255);
      
      ellipse(6*(n+1),6*array[n],6,6);
    }   
  }
  
}
