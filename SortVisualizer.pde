static final float goldenRatio = (1+sqrt(5))/2;

Sort sort;

void setup() {
  size(600,600);
  textAlign(RIGHT,TOP);
  
  sort = new BubbleSort(randomIntArray(100));
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  
  text(int(frameRate)+" fps\n"+sort.num,width,0);
  
  sort.sortStep();
  sort.drawArray();
}

int[] randomIntArray(int n) {
  int[] data = new int[n];  
  for (int i = 0; i < n; i++)
    data[i] = int(random(n));
    
  return data;
}

void keyPressed() {
  if (key == '-') frameRate(frameRate/goldenRatio);
  else if (key == '=') frameRate(frameRate*goldenRatio);
  if (frameRate < 1) frameRate(1);
  
  // SORTING ALGORITHM SELECTION
  char c = Character.toUpperCase(key);
  switch(c) {
    case '1':  sort = new BubbleSort(randomIntArray(100)); return;
    case '2':  sort = new OptimizedBubbleSort(randomIntArray(100)); return;
    case '3':  sort = new CocktailSort(randomIntArray(100)); return;
    case '4':  sort = new OddEvenSort(randomIntArray(100)); return;
    case '5':  sort = new GnomeSort(randomIntArray(100)); return;
    case '6':  sort = new BogoSort(randomIntArray(100)); return;
    case '7':  sort = new BozoSort(randomIntArray(100)); return;
    case '8':  sort = new InsertionSort(randomIntArray(100)); return;
    case '9':  sort = new SelectionSort(randomIntArray(100)); return;
    case 'A':  sort = new HeapSort(randomIntArray(100)); return;
  }
  
}
