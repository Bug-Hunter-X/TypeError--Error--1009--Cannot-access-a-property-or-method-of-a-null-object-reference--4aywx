function handleComplete(event:Event):void
    {
        var xml:XML = new XML(event.target.data);
        var items:XMLList = xml.item;
        for each (var item:XML in items)
        {
            if (item.name != null && item.x != null && item.y != null) //check for null values
            {
                trace(item.name);
                var mc:MovieClip = new MovieClip();
                mc.name = item.name;
                addChild(mc);
                mc.x = item.x * 20;
                mc.y = item.y * 20;
            }
            else
            {
                trace("Error: missing XML data for item");
            }
        }
    }    
