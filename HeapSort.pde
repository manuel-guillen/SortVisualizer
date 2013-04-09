import java.util.LinkedList;
import java.util.PriorityQueue;

class HeapSort extends Sort {
  
  private PriorityQueue<Integer> heap;
  private LinkedList<Integer> list;
  private boolean sorting;
  
  HeapSort(int[] arr) {
    super(arr);
    sorting = false;
    
    heap = new PriorityQueue<Integer>();
    list = new LinkedList<Integer>();
    for (int num : arr) list.add(num);
    
    num = 10;
  }
  
  void drawArray() {
    int i = 1;
    if (sorting)  for (int s : list) ellipse(6*(i++),6*s,6,6);
                  for (int n : heap) ellipse(6*(i++),6*n,6,6);
    if (!sorting) for (int s : list) ellipse(6*(i++),6*s,6,6);
      
  }
  
  void sortStep() {
    if (!sorting) {
      if (list.isEmpty()) sorting = true;
      else heap.add(list.removeFirst());
    } else if (!heap.isEmpty()) {
      list.add(heap.poll());
    }
  }
  
}
