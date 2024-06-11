void main(){
  var obj=car();
  obj.Electric();
  obj.Hybrid();
}
class car with electric,hybrid{

} 
  mixin electric{
       
    Electric(){

      print("This is an Electric variant");
    }
  }
 mixin hybrid{
   
   Hybrid(){
     print("This is an Petrol variant");     
   }
 }
 
