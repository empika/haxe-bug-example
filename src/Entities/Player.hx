package entities;
 
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
 
class Player extends Entity
{
    public function new (x:Float, y:Float) {
        super(x, y);
        graphic = Image.createRect(32, 32, 0xDDEEFF);
        
        // This should work, results in:
        // src/entities/Player.hx:12: characters 14-35 : com.haxepunk.World has no field test_string
        trace(HXP.world.test_string);
        
        // This should work, results in:
        // src/entities/Player.hx:13: characters 8-30 : com.haxepunk.World has no field testFunction
        HXP.world.testFunction();
        
        // These both work
        trace(Reflect.field(HXP.world, 'test_string'));
        trace(Reflect.callMethod(HXP.world, Reflect.field(HXP.world, 'testFunction'), []));
    }
    
}