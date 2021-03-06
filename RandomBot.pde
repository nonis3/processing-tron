class RandomBot implements Bot {
  Color c;
  Map map;
  int x, y;
  RandomBot(Map map, Color c, int x, int y) {
    this.map = map;
    this.c = c;
    updatePos(x, y);
  }
  
  int getX() { return x; }  
  int getY() { return y; }
  Color getColor() { return c; }
  
  void updatePos(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  int makeMove() {
      ArrayList<Integer> validMoves = new ArrayList<Integer>();
      if (!map.isWall(x, y - 1))
          validMoves.add(0);
      if (!map.isWall(x + 1, y))
          validMoves.add(1);
      if (!map.isWall(x, y + 1))
          validMoves.add(2);
      if (!map.isWall(x - 1, y))
          validMoves.add(3);
      if (validMoves.size() == 0) {
        return 0;
      } else {
        int whichMove = int(random(validMoves.size()));
        return validMoves.get(whichMove);
      }  
  }
}