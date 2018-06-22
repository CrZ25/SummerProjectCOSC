void Menu(){
  image(menu,0,0);
}
void Help(){
   image(Help,0,0);
}
void GameOver(){
  int time=millis();
image(GameOver,0,0);
if(millis()-time>10){
  time=millis();
  reset();
  Scene=0;
}
}