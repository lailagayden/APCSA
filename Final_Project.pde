Table table;
int songIndex=2;
//drawSong(floor(random(255)), floor(random(255)), floor(random(255)));
void setup()
{
  size(1000, 1000);
  background(0, 0, 0);
  table = loadTable("https://raw.githubusercontent.com/lailagayden/APCSA/main/Spotify.csv", "header");
  println(table.getRowCount() + " total rows in table");
  //drawSong(floor(random(255)), floor(random(255)), floor(random(255)));
  for (TableRow row: table.rows()) {
    String artist = row.getString("artist");
    String song = row.getString("song"); 
    String duration = row.getString("duration");
    String explicit = row.getString("explicit"); 
  
  }
  Song mySong = Song(artist, song, duration, explicit);
    
}


void keyPressed()
{

  if (keyCode == DOWN)
  {
    songIndex++;
    drawSong(floor(random(255)), floor(random(255)), floor(random(255)));
  } else if (keyCode == UP)
  {
    songIndex--;
    if (songIndex < 0)
    {
      songIndex = 0;
    }
    drawSong(floor(random(255)), floor(random(255)), floor(random(255)));
  } else if (keyCode == LEFT)
  {
    drawSong(100, 100, 100);
  } else if (keyCode == RIGHT)
  {
    drawSong(0, 0, 0);
  }
}

void draw()
{
}
