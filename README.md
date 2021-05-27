<h1>Copy to Clipboard - Oracle APEX Dynamic Action Plugin</h1>

Plug-in for copying the content of an APEX item to the clipboard.

<h2>Uses</h2>
The plugin can be used for copying the content of <b>Text Field,Text Area</b> etc.. <br>
The plugin can be used for copying the content of <b>Hidden</b> items also.<br>
It also shows a success message after copying the content of an item. The success message can be customizable based on the users request.

<h2>Installation</h2>
Import plugin file "dynamic_action_plugin_copy_to_clipboard.sql" from Source directory into your application.

<h2>How to Use</h2>
  1) Create a Dynamic Action (eg: On Click of a button) <br>
  2) Create a True action.<br>
  3) Select the <b>Copy To Clipboard [Plug-in]</b> option.<br>
  4) Select an Item from the list that has to be copied.<br>
  5) Enter some text that has to be shown as the Success Message.(Optional). For dynamic messages, a page item can also be substituted in this field (example: &ITEM_NAME.)
  
  https://user-images.githubusercontent.com/30211230/119861985-a35ec100-bf35-11eb-9787-5223bea54f55.png <br>
  https://user-images.githubusercontent.com/30211230/119862138-d43ef600-bf35-11eb-9e3d-6cbac7706172.png
  
<h2>Demo</h2>
https://apex.oracle.com/pls/apex/workspace_akil/r/demo/copy-to-clipboard-plug-in
