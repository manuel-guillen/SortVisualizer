abstract class Sort {
  protected int[] array;
  public int num;
  
  Sort (int[] a) {
    array = a;
  }
  
  abstract void sortStep();
  
  void drawArray() {
    for (int i = 0; i < array.length; i++)
      ellipse(6*(i+1),6*array[i],6,6);
  }
  
  void swap(int i, int j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }
  
}
