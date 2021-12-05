Table table; 
Table table1;
int num_Angles;
float angle;

void setup(){
  table = loadTable("coxcombTest.csv", "header");
  table1 = loadTable("coxcombTest1.csv", "header");
  num_Angles = 10;
   angle = 360/num_Angles;
   size(1920,1080);
  smooth();
  noLoop();
  
  //Title
  String s = "Visualization of 10 minute observation (in 1 min increments) in number of ads on websites";
  textSize(50);
  fill(250);
  text(s, 10,10, width, 800);
  
}

void draw(){
  for (TableRow row : table.rows()) {
    
    int minutes = row.getInt("minute");
    int ads = row.getInt("# of ads on website");
    int webs = row.getInt("# of websites opened ");
    println("In the " + minutes + " minute",  " there were " + ads + "ads shows at " + webs +"websites ");
    
 
    float area = sqrt(num_Angles * ads/PI)*40; //use this as scale factor (keep constant!!)
    println(area);
    noStroke();
    float col = map(ads, 0,10,0,255);
    fill(col, 0, 50);
    arc(width/4, height/2, area, area, radians(270 + ((minutes-1) * angle )), radians((angle * (minutes)) + 270));
    
    

    float area2 = sqrt(num_Angles * webs/PI)*80; //use this as scale factor (keep constant!!)
    println(area2);
    noStroke();
    float col2 = map(ads, 0,80,0,255);
    fill(col2, col2, 0,50);
    arc(width/4, height/2, area2, area2, radians(270 + ((minutes-1) * angle )), radians((angle * (minutes)) + 270));
    
  }
  
  
  for (TableRow row : table1.rows()) {
    
    int minutes = row.getInt("minute");
    int spads = row.getInt("# of shopping ads");
    int oads = row.getInt("# of other ads");
    println("In the " + minutes + " minute",  " there were " + spads + "shoppering ads and  " + oads + "other ads");
    

    float area = sqrt(num_Angles * spads/PI)*40; //use this as scale factor (keep constant!!)
    println(area);
    noStroke();
    float col3 = map(spads, 0,10,0,255);
    fill(0, col3, 10);
    arc(width*0.75, height/2, area, area, radians(270 + ((minutes-1) * angle )), radians((angle * (minutes)) + 270));
    
    

    float area2 = sqrt(num_Angles * oads/PI)*60; //use this as scale factor (keep constant!!)
    println(area2);
    noStroke();
    float col4 = map(oads, 0,80,0,255);
    fill(0, col4, col4,90);
    arc(width*0.75, height/2, area2, area2, radians(270 + ((minutes-1) * angle )), radians((angle * (minutes)) + 270));
    
  } 
  
  }










 
