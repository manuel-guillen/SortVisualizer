import java.util.Arrays;
import java.util.Collections;

class BogoSort extends Sort {
  
  ArrayList<Integer> list;
  boolean sorted;
  
  BogoSort(int[] arr) {
    super(arr);
    sorted = false;
    list = new ArrayList<Integer>();
    for (int x : arr) list.add(x);
    
    num = 6;
  }
  
  void drawArray() {
    for (int i = 0; i < list.size(); i++)
      ellipse(6*(i+1),6*list.get(i),6,6);
  }
  
  void sortStep() {
    if (sorted) return;
    Collections.shuffle(list);
    
    int a = 0;
    for (int x : list)
      if (x < a) {
        sorted = false;
        return;
      } else a = x;
    
  }
  
}
