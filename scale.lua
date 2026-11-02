init = function()
  dish2=-55
  dish1=55
  pivot=0
  item=""
  rockx=80
  rocky=-55
  featherx=30
  feathery=-51
  ironbarx=-30
  ironbary=-51
  goldbarx=130
  goldbary=-51
  ivalue=8
  fvalue=2
  trueprice=12
end

update = function() 
  //scale limits 
  if 1==1 then 
  if pivot>30 then pivot=30 end
  if pivot<-30  then pivot=-30 end
  end
  //scale limits 
  //
  //  item present detection
  if 1==1 then 
    if placed1==true and placed2==false  then  pivot=pivot-1 end
    if placed2==true and placed1==false then  pivot=pivot+1 end 
    if placed1==false and placed2==false then if pivot>0 then pivot=pivot-1 elsif pivot<0 then pivot=pivot+1 end end
     if placed1==true and placed2==true then 
       if item1w>item2w then pivot=pivot-1 end
       if item1w<item2w then pivot=pivot+1 end
       if item1w==item2w then if pivot>0 then pivot=pivot-1 elsif pivot<0 then pivot=pivot+1 end 
         end
         

     end
     end
  //  item detection
  
  //

 // item weight detection
 if featherlock==1 then feather1w=1 else feather1w=0 end
 if rocklock==1 then rock1w=2 else rock1w=0 end
 if ironlock==1 then iron1w=3 else iron1w=0 end
 if goldlock==1 then gold1w=4 else gold1w=0  end
 item1w=feather1w+rock1w+iron1w+gold1w 
if featherlock==2 then feather2w=1 else feather2w=0 end
 if rocklock==2 then rock2w=2 else rock2w=0  end
 if ironlock==2 then iron2w=3 else iron2w=0 end
 if goldlock==2 then gold2w=4 else  gold2w=0 end
 item2w=feather2w+rock2w+iron2w+gold2w 

// item weight detection
//
  // weight calculations
  if item2>item1 then heavy2=true end
  if item2<item1 then heavy1=true end
  // weight calculations
  //
  //fall
   if 1==1 then
     
     if rocky>-55 then  rocky=rocky-2 end 
     if ironbary>-50 then  ironbary=ironbary-2 end 
     if goldbary>-50 then  goldbary=goldbary-2 end 
     if  feathery>-50 then  feathery=feathery-2 end 
     end
  //fall
  //  
 
if 1==1 then
  if rocky <=mouse.y and rocky>=mouse.y-25 or rocky>=mouse.y  and rocky<=mouse.y+25 then 
  if rockx<=mouse.x and rockx>=mouse.x-25 or rockx>=mouse.x and rockx<=mouse.x+25  then 
 if mouse.press then after 0.1 seconds do if rockactive==false then rockactive=true  lastactive="rock" else rockactive=false end end end end end

 
  if ironbary <=mouse.y and ironbary>=mouse.y-25 or ironbary>=mouse.y  and ironbary<=mouse.y+25 then 
  if ironbarx<=mouse.x and ironbarx>=mouse.x-25 or ironbarx>=mouse.x and ironbarx<=mouse.x+25  then 
 if mouse.press then after 0.1 seconds do  if ironactive==false then ironactive=true  lastactive="iron" else ironactive=false end end end  end end
 
 
  if goldbary <=mouse.y and goldbary>=mouse.y-25 or goldbary>=mouse.y  and goldbary<=mouse.y+25 then 
  if goldbarx<=mouse.x and goldbarx>=mouse.x-25 or goldbarx>=mouse.x and goldbarx<=mouse.x+25  then 
 if mouse.press then after 0.1 seconds do   if goldactive==false then goldactive=true  lastactive="gold" else goldactive=false end end  end end end
 

  if feathery <=mouse.y and feathery>=mouse.y-25 or feathery>=mouse.y  and feathery<=mouse.y+25 then 
  if featherx<=mouse.x and featherx>=mouse.x-25 or featherx>=mouse.x and featherx<=mouse.x+25  then 
 if mouse.press then after 0.1 seconds do  if featheractive==false then featheractive=true  lastactive="feather" else featheractive=false end end end end end
  end
 
 
 
   
  if 1==1 then 
 if rockactive==true then rockx=itemx rocky=itemy end
 if ironactive==true then ironbarx=itemx ironbary=itemy end
 if goldactive==true then goldbarx=itemx goldbary=itemy end
 if featheractive==true then featherx=itemx feathery=itemy end end
  //rock to mouse
  if 1==1 then 
      
    itemx=mouse.x
    itemy=mouse.y 
    
   end 
  
  //rock to mouse

if pivot+10 <=mouse.y and pivot+10>=mouse.y-25 or pivot+10>=mouse.y  and pivot+10<=mouse.y+25 then 
  if dish1<=mouse.x and dish1>=mouse.x-25 or dish1>=mouse.x and dish1<=mouse.x+25  then  
 if mouse.press then   if placed1== false then placed1= true 
  if featheractive==true  then featherlock=1 end 
   if rockactive==true  then rocklock=1 end 
    if ironactive==true  then ironlock=1 end 
     if goldactive==true  then goldlock=1 end 
  
   else placed1=false  
     if featherlock==1 then featherlock=0 end
    if rocklock==1 then rocklock=0 end 
    if ironlock==1 then ironlock=0 end
    if goldlock==1 then goldlock=0 end end end end end

//buttons

if -90 <=mouse.y and -90>=mouse.y-25 or -90>=mouse.y  and -90<=mouse.y+25 then 
  if -80<=mouse.x and -80>=mouse.x-25 or -80>=mouse.x and -80<=mouse.x+25  then  
 if mouse.press then init()   end end end 
 //-68.5 -58
 if -58 <=mouse.y and -58>=mouse.y-5 or -58>=mouse.y  and -58<=mouse.y+5 then 
  if -68.5<=mouse.x and -68.5>=mouse.x-5 or -68.5>=mouse.x and -68.5<=mouse.x+5  then  
 if mouse.press then digit1=digit1+1   end end end 
 //-68.5 -121
  if -58 <=mouse.y and -58>=mouse.y-5 or -58>=mouse.y  and -58<=mouse.y+5 then 
  if -121<=mouse.x and -121>=mouse.x-5 or -121>=mouse.x and -121<=mouse.x+5  then  
 if mouse.press then digit1=digit1-1   end end end 
  
   if -58 <=mouse.y and -58>=mouse.y-5 or -58>=mouse.y  and -58<=mouse.y+5 then 
  if -96<=mouse.x and -96>=mouse.x-5 or -96>=mouse.x and -96<=mouse.x+5  then  
 if mouse.press then Pprice=price   end end end 
 if Pprice>0 then if Pprice==trueprice then win==true end end

//buttons
    
// rock place
  if -pivot+10 <=mouse.y and -pivot+10>=mouse.y-25 or -pivot+10>=mouse.y  and -pivot+10<=mouse.y+25 then 
  if dish2<=mouse.x and dish2>=mouse.x-25 or dish2>=mouse.x and dish2<=mouse.x+25  then 
 if mouse.press then  if placed2== false then placed2= true  
   if featheractive==true  then featherlock=2 end 
   if rockactive==true  then rocklock=2 end 
    if ironactive==true  then ironlock=2 end 
     if goldactive==true  then goldlock=2 end 
   else placed2=false 
    if featherlock==2 then featherlock=0 end
    if rocklock==2 then rocklock=0 end 
    if ironlock==2 then ironlock=0 end
    if goldlock==2 then goldlock=0 end end end end end

 
//counter
if digit1>9 then digit1=0 digit2=digit2+1 end
if digit1<0 then digit1=9 digit2=digit2-1 end
if digit2<0 then digit2=9 digit2=digit3-1 end
if digit2>9 then digit2=0 digit3=digit3+1 end
price=digit1+(digit2*10) + (digit3*100)
//counter
 
end
draw = function()
     screen.setDrawRotation(0)
   screen.drawSprite("background",-0,20,500)
     screen.drawText(fvalue,100,18,30, "rgba(200,150,80)") 
   screen.drawText(ivalue,100,-10,30, "rgba(200,150,80)") 
   screen.drawSprite(item,itemx,itemy,55)
   screen.setDrawRotation(pivot)
  screen.drawSprite("beem",0,40,155)
  screen.setDrawRotation(0)
  //
//  sprites 
if 1==1 then
  screen.drawSprite("pipe",-0,-0,170)
   screen.drawSprite("price",-98,-35,120)
   screen.drawText(digit1,-72.5,-32,30, "rgba(200,100,30)") 
   screen.drawText(digit2,-95,-32,30, "rgba(200,100,30)") 
   screen.drawText(digit3,-117,-32,30, "rgba(200,100,30)") 
      screen.drawText("-",-121.5,-57.5,10, "rgba(250,250,250)") 
            screen.drawText("+",-69,-57.5,10, "rgba(250,250,250)") 
     
   
  screen.drawSprite("chain",dish1,pivot+30,80)
    screen.drawSprite("chain2",dish2,-pivot+30,80)

  screen.drawSprite("dish1",dish1,pivot+10,80)
    screen.drawSprite("dish2",dish2,-pivot+10,80)
    

  screen.drawSprite("feather",featherx,feathery,55)
    screen.drawSprite("rock",rockx,rocky,55)
  screen.drawSprite("ironbar",ironbarx,ironbary,55)
  screen.drawSprite("goldbar",goldbarx,goldbary,55)

  screen.drawSprite("reset",-80,-90,80)
  screen.drawText("RESET",-80,-90,12, "rgba(200,100,30)") 

end
//  sprites 
//locked
if 1==1 then 
if featherlock==2 then featherx=dish2-3 feathery=-pivot+23 end
if featherlock==1 then featherx=dish1-3 feathery= pivot+23 end
//
if rocklock==2 then rockx=dish2-3 rocky=-pivot+23 end
if rocklock==1 then rockx=dish1-3 rocky= pivot+23 end
//
if ironlock==2 then ironbarx=dish2 ironbary=-pivot+23 end
if ironlock==1 then ironbarx=dish1-0.1 ironbary= pivot+23 end
//
if goldlock==2 then goldbarx=dish2 goldbary=-pivot+23 end
if goldlock==1 then goldbarx=dish1-0.1 goldbary= pivot+23 end
end
//locked
//
print(price)
print(mouse.x)
end
