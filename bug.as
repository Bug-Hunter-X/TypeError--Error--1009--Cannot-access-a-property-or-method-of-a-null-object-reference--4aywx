function handleComplete(event:Event):void{

        //trace(event.target.data);
        var xml:XML = new XML(event.target.data);
        //trace(xml);
        var items:XMLList = xml.item;
        //trace(items);
        for each (var item:XML in items)
        {
            trace(item.name);
            var mc:MovieClip = new MovieClip();
            mc.name = item.name;
            addChild(mc);
            mc.x = item.x*20;
            mc.y = item.y*20;

        }
    }