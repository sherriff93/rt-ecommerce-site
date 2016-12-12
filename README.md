# rt-ecommerce-site

N.B. This is the front-end portion of an an old project that I did in my web tech course during uni.
Note that it isn't representative of my current web dev skillset! Also included is the SQL database
file I created for the back-end part of the project, along with a readme detailing its involvement.
Both are in the "sql" folder.

REPORT:

--- Contents ---
1. Navigation
2. Javascript Usage
3. Backwards Compatibility

--- Navigation ---
My website consists of two departments; “Clothing” and “Circus Stuff”. These are accessed via
“index.html”. The “Circus Stuff” section is a lot more sophisticated than “Clothing”.

From “Circus Stuff”, you can navigate to:
+ “sign_up.html” by clicking its Div in the header.
+ “review.html” by clicking its Div in the left pane.
+ “index.html” by clicking the “Rave threads” logo (or anywhere in its Div).
+ “Clothing” by clicking its Div in the left pane. All other links lead to the “default.html” page.
+ From “Clothing”, the “Rave Threads” logo and “Circus Stuff” still link to their respective
locations. All other links lead to “default_blue.html”.

The “Rave Threads” logo was created in gimp, as well as the writing for the “Write a Review”,
“Clothing” and “Circus Stuff”. The svg of the 3 juggling clubs were created in Inkscape.

The page is as high as the content contained within it. The width is fluid down to 640px, where it
becomes rigid.

--- Javascript Usage ---
+ Youtube video and text inside the 6 'featured offers' divs shrink once the browser window has a
width smaller than 1100px.
+ Height of the left and right columns of each page set to the same as whichever stretched further
down.
+ User prompted to fill in all the fields in "Sign Up" if they fail to do so at first.
+ The .svg on the "Circus" page (The three clubs) fades in and out.
+ Array of ratings (1 – 5) displayed when the cursor is hovered over the “Rate” Div on the "Circus"
page (Located under the video of the week).

--- Backwards Compatibility ---
+ IE8 did not support box shadows or background image stretching. Thus, I changed to normal borders
instead of shadows (used in “style2”, accessed via a conditional IE 8 comment), and normal images
with a z-index of ‘-1’ instead of background images.
+ The .svg image has a fall back to a .png, so it is shown whether the browser supports .svg or not.
+ IE 8 didn’t support multiple background images. Thus, when you hover over the two images in the
left pane (“Write a Review” and “Circus Stuff”/”Clothing”), the background images disappear. However
I considered this to be insignificant, as the aesthetics aren’t really affected. The website was not
tested in earlier versions of IE.
