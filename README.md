# Feathers MXML Spark Library

The library with components extended Feathers components [Feathers SDK](http://feathersui.com/sdk/), to work like with Flex Spark components

![alt tag](https://raw.githubusercontent.com/flexsurfer/feathers_mxml_spark/master/feathers.png)

```XML
<spark:VGroup width="100%" gap="20" paddingTop="20" top="50">
    <spark:HGroup horizontalAlign="center" gap="10" width="100%" paddingRight="20" paddingLeft="20" top="50" >
      <spark:Button width="100%" height="80" id="button" label="Click Me" triggered="button1_triggeredHandler(event)"/>
      <f:Button id="button2"  label="Click Me 2" triggered="button1_triggeredHandler(event)"/>
    </spark:HGroup>

    <spark:HGroup horizontalAlign="center" gap="10" width="70%">
      <f:Button id="button3" height="{button.height}" label="Click Me 3" triggered="button1_triggeredHandler(event)"/>
      <f:Button id="button4" label="Click Me 4" triggered="button1_triggeredHandler(event)"/>
    </spark:HGroup>
  </spark:VGroup>
```

### Known issues

The Intellij Idea will highlight percent values in red. However, the compiler will compile this file without issues. Unfortunately this issue can be fixed only in the Starling library, because this issue in the Idea https://youtrack.jetbrains.com/issue/IDEA-70677