=== ORIGINAL UNIFI README IS BELOW ===


UIKit-Styled UniFi Portal v0.1 - 06/07/2014
This is a responsive design for the UniFi Captive Portal.  It is based on the UIKit framework available at http://www.getuikit.com/ 
The page will adapt to the device's display resolution, and features intuitive design elements that make it easier to read and input codes on a mobile device.
This portal code will be maintained at http://community.ubnt.com/t5/UniFi/a/td-p/905986



=== Main Features ===

- Tested (somewhat) with UniFi Controller v3.2.1
- Large text, buttons and input fields
- Stylized alert / error boxes
- No TOU checkbox, added note that says if you continue, you agree (not sure on legalities for this?)
- Modal popup to read TOU, makes it easier to read on mobile
- Commented HTML code
- Minified CSS
- Easy to stylize colors by generating a new CSS from http://www.getuikit.com/docs/customizer.html

Currently Supported Portal Modes:
- No Authorization
- Simple Password
- Voucher Authorization
Payment Gateway / PayPal has not beed customized and the related sample code has been removed.  Enabling these requires hand-customizing the portal HTML anyways, so if you're going to do that, you will probably need to know enough to edit this design anyhow.  This may be added in a future update.



=== To Customize ===

The portal is essentially the default portal, but all restyled to use UIKit's styles.  Feel free to go in and edit any plain text as necessary.  It's really easy to edit if you use Sublime Text with the autocomplete plugin: http://www.getuikit.com/docs/documentation_get-started.html#uikit-autocomplete-for-sublime.  The page column width can be modified on or around line 24.

Images:
All images are automatically responsive, and will size according to the device display resolution.  
- bg.jpg: The page background.  This should be high resolution.  By default it will cover the entire displayport, maintaining aspect ratio and usually won't scroll.  The included image is from the I was unable to find the original author, so don't know what the license is. 
- logo.png: The site's logo (hotel, business, etc).  Should have a transparent background if using the default CSS.
- operator.png: This is the operator branding image that is shown at the bottom of the page.

Overall Style:
By default, the portal is styled with these two files:
- css/uikit.active.css: This is the main UIKit CSS file.  The one included is based on uikit.gradient.css, but with an alpha transparency added to the uk-panel-box-secondary style.
You can change the entire look and feel of the portal by using UIKit's Customizer at http://www.getuikit.com/docs/customizer.html.  This will let you generate new CSS files.  Simply drop them into the /css/ folder and rename them to uikit.active.css and it will be applied.  Don't forget to check the Minify CSS option in the customizer.  You can also try any of the extra styles, uikit.min.css, uikit.gradient.min.css and uikit.almost-flat.min.css by renaming them to uikit.active.css
- css/custom.css: This is the CSS that contains the body background styling.  Place any extra styling in here so it's not lost if you choose to change the UIKit style.

Operator Branding:
There is an optional Operator Branding (aka Shameless Plug) section at the bottom of the index.html file.  It's there by default, but if you wish to use it, you should go in and edit the text and the URL it links to.  Make sure you add the linked website's IP subnet to the Allowed Subnets section of the Guest Portal settings in the controller so that a user that doesn't get authorized can still get to your website via the link (ex, a hotel's competitor looking to see if the WiFi works and who installed it).

Terms of Use Text:
The TOU text is loaded as a Modal Popup.  The code is in a hidden div at the very bottom of the index.html file and within the div is the default HTML that comes with the standard portal.  Edit to your hearts content, but keep in mind that if you add much more text, it may not fit nicely on mobile screens.



=== Disclaimer ===
If you are going to use this code, you do so under the agreement that you will be willing to provide any bug fixes, enhancements or derivative works back to the community.  I appreciate any comments, ideas, or feedback!

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.









=== ORIGINAL UNIFI README FILE ===


The sample portal is, while useful by itself, written in a way that it
demonstrates most features in the simplest format.

# directory structure
index.html    : the main landing page
bundle/messages.properties: for localization and hotspot package specification
payment.html  : for credit card information submission. requires https, also 
                served as an example of additional .html page
fail.html     : default page when there's error handling guest login

supporting files: 
images/
js/
reset-min.css
styles.css


===== unifi tags =====

====== <unifi var="name" /> ======
a few vars are populated where you can use <unifi var="varnames" /> to render it in the HTML page

* auth:            none | password | hotspot
* auth_none:       false | true
* auth_password:   false | true
* auth_hotspot:    false | true

* voucher_enabled: false | true
* payment_enabled: false | true

* package:         the package id (from POST or GET)
* mac:             guest's MAC address
* ap_mac:          AP's MAC address 
* ap_name:         AP's name
* map_name:        AP's location (name of the map)
* ssid:            the SSID of the wireless network

* error:           error message
* has_error:       false | true


====== <unifi include="header.html" /> ======
to include another HTML page


====== <unifi if="name" eq="value"> ... <unifi else="var" /> ... </unifi> ======
the simple if/then/else logic to determine if a section of the page should be shown
use <unifi if="!name" eq="value" > ...</unifi>


====== <unifi txt="InvalidPassword" /> ======
text localization, see bundle/messages.properties


====== <unifi url="payment.html" https="true" /> ======
generates the URL (and possibly change it to HTTPs) relatively


====== /guest/login ======
this is the URL the user will POST to get authorized, it takes the following parameters:

* by:               type of authentication (for hotspot): voucher | credit | paypal
* package:          package id (for hotspot)
* voucher:          voucher code (for hotspot/voucher)
* cc_xxxxx:         credit card information (for hotspot/credit):
* landing_url:      use a dynamic landing URL (which can be constructed by using vars)
* page_error:       relative URI when error occurs (fail.html is the default)


credit card related fields: 
cc_firstname, cc_lastname, cc_number, cc_year, cc_month, cc_ccv2
cc_addr1, cc_addr2, cc_city, cc_state, cc_zip, cc_country, cc_email
