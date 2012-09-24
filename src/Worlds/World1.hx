package worlds;

import com.haxepunk.World;
 
class World1 extends World
{

    public var test_string:String;
    private var _player:entities.Player;

    public function new ()
    {
        super();
    }
    
    public override function begin () {
        test_string = "hello";
        _player = new entities.Player(64, 64);
        add(_player);
    }
    
    public function testFunction () {
        trace("called testFunction");
    }
}