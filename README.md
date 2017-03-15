#Making and running of a text editor/notepad.

-----------------------------------------------------------------------------
#Instructions for running this editor:
-----------------------------------------------------------------------------
1. open th zip folder and extract files.
(zip folder includes editort.html file and style.css file)

2. Copy the following files/folders to your  desktop.
3. To view the source code of html/css file, open it in any code editor like notepad++ ,sublime text2 etc.
4. Run the html file,double click on html file and open in google browser.
5. Enter any text in the given area and click on 'show text' to see the desired output.

------------------------------------------------------------------------------
#Functioning of text editor:
-------------------------------------------------------------------------------
As per the given requirement and following the example of Medium.com website:

Task#1: Each enter will be separated by new line or line breaks. [status: completed]
explanation: after you complete writing in the texteditor and press enter it will change the line and it will be reflected when you click on "show text" button.
example: Hello (press Enter) World line breaks and print as same.

Task#2: Drag and drop or here cut,copy and paste the paragraphs to rearrange in order (as per given example medium.com). [status:completed]
explanation: if you have written multiple lines/paragraphs then cut,copy paste the below para to above and it will be reflected when you click on "show text" button.

Task#3: On-double clicking a word,show a tooltip with three options:make the word bold,underlined, and change the text color to red. [status:completed]
explanation: when you enter the text and click on "show text" button then at the bottom you will see the result where you can perform this task.As per the task it will change the color of text to red not word.
Additional function: Italic and Undo buttons are also added.

Task#4: user enters a link with tag: <a>this is a link</a> then it shows a link in alternative color(for mutiple anchor tags) at the bottom of the editor and they are not actually linking to any site. [status: completed]
explanation:when user enters multiple anchor links either in <a></a> this way or  proper html syntax<a href="#">www.goofle.com</a>  it will dsiplay as a link with alternative text color "red" and "green".
example:<a href="www.google.com">google</a>["green"]  , <a href="#">google</a>["red"] , <a>google</a>["green"].

-----------------------------------------------------------------------------------------------------------------------------------------------------
Apart from these task,additional feature added are:

1. cross-browser supportive like google chrome,mozilla latest version,IE,Microsoft Edge.
2. On double click on tooltip, it will vanish/disapper from the screen.
3. user can write eithe normal text or in html format both can be readable as same and show the same output(in most cases).
eg: <ul><li>hello</li><li>world</li>, <p>hello world</p>

-----------------------------------------------------------------------------------------------------------------------------------------------------
Function description in html code(jQuery/javascript):
---------------------------------------------------------------------------------------------------------------------------------------------------
#alternative coloured links:
	$(document).ready(function(){
    $("a:odd").css("color", "red");             //for odd number of links
    $("a:even").css("color", "green");      //for even number of links
});

#to change the color (here "Red")
function turnRed() {
var myPara = document.getElementById("view_text");
myPara.style.color = "red";
}

#doubleclick event to vanish the tooltip from screen
$(document).ready(function(){
    $("div").dblclick(function(){
        $(this).fadeOut();
    });
});

#display of tooltip

function showTooltip(e) {
  tooltip.style.display = 'block';//tooltip design in 'block' shape
}

#strike on button will perform respective task due to "id" trigger
 console.log(e.target.id);                      //this will take id from respective buttons clicked by the user's choice
    document.execCommand(this.id);    //this will execute command as per the selection from tooltip like B,I,U,undo
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
Dated: 24-02-2017
Name:Siddharth


