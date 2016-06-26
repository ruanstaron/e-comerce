=== Theme Tweaker ===
Contributors: manojtd
Donate link: http://buy.thulasidas.com/theme-tweaker
Tags: theme, theme colors, theme styles, theme customization, extra css, theme tweaking
Requires at least: 2.5
Tested up to: 4.3
Stable tag: 4.82
License: GPL2 or later

Theme Tweaker lets you modify the colors in your theme with no CSS/PHP editing.

== Description ==

*Theme Tweaker* displays the existing colors from your current theme, and gives you a color picker to replace them. It also lets you change them in bulk, like invert all colors, use grey scale etc.

Furthermore, *Theme Tweaker* allows you to preview or activate your changes. Finally, you can save the modified stylesheet locally and upload it into your blog server to deploy your new color scheme.

*Theme Tweaker* will now generate a fully functional child theme for you! Using child themes, you leave your original (parent) theme untouched, so that it can be updated independently without losing your tweaks.

Cannot complete the tweaking in one sitting? No problem, *Theme Tweaker* lets you save your work and pick it up from here you leave off. Moreover, *Theme Tweaker* will remember your saved color schemes for any number of themes.

*Theme Tweaker* is now available in your own language using machine translation curtsey of Google and Microsoft.

= Pro Version =

This release is the freely distributed, Lite version of *Theme Twekaer*. It is fully functional. But the **[Pro Version](http://buy.thulasidas.com/theme-tweaker "Pro version of the Theme Tweaer plugin for only $4.95")** gives you more features and benefits. For instance,

1. Ability to generate and download `style.css` files with your modified colors.
2. Ability to create a child theme so that your changes can be applied even when the underlying theme is updated.
3. Scanning for *all* the style files in your theme directory to find all possible color definitions.
4. Ability to tweak colors in both parent and child theme style files.

And more. New features and bug fixes will first appear in the Pro version before being ported to this freely distributed Lite edition.

*Note that Theme Tweaker may not work with some themes. Please verify its suitability using the Lite version before considering the Pro version.*

== Upgrade Notice ==

Refactoring changes.

== Screenshots ==

1. How to tweak your theme using *Theme Tweaker*.
2. *Theme Tweaker* in action - using the TwentyTen theme. Before tweaking.
3. *Theme Tweaker* in action - TwentyTen after tweaking to inverted colors.
4. *Theme Tweaker* in action - TwentyTen with Random colors!

== Installation ==

= Searching =

The easiest way to install this plugin is to use the WordPress Admin interface. Go to your admin dashboard, find the "Plugins" menu, and click on "Add New". Search for this plugin and click on "Install Now" and follow the WordPress instructions.

= Uploading =

If you want to download it and manually install, you can again use the WordPress dashboard interface. First download the plugin zip file to your local computer. Then go to your admin dashboard, find the "Plugins" menu, and click on "Add New". After clicking on the "Add New" menu item as above, click on "Upload" (below the title "Install Plugins" near the top). Browse for your downloaded zip file, upload it and activate the plugin.

== Frequently Asked Questions ==

= Great idea, but doesn't work with my theme. What gives? =

This plugin works as follows: It first identifies the strings in the `style.css` file of your theme that look like colors. It them presents them to you with an option to replace them using a color-picker. The replaced colors are dynamically inserted in the header of your pages as they are generated.

This scheme worked great when I first developed it. But now, more and more themes (especially the ones that offer you a color-picker) are using the same strategy to control the appearance of your pages. They keep the color definitions in places other than the `style.css` file such as their `php` files, and the database. Such schemes will foil the color tweaking strategy of this plugin.

== Change Log ==

* V4.82: Refactoring changes. [Nov 7, 2015]
* V4.81: Enhancements in the admin interface. [Oct 17, 2015]
* V4.80: Option to kill author links on the admin page. [Sep 13, 2015]
* V4.70: Compatibility with WordPress 4.3. [Aug 10, 2015]
* V4.60: Compatibility with WordPress 4.2. [April 25, 2015]
* V4.50: Adding ability to scan parent theme folder (pro feature). [Apr 2, 2015]
* V4.40: Compatibility with WP4.1. [Jan 8, 2014]
* V4.31: Minor change to the admin interface. [Sep 9, 2011]
* V4.30: Releasing translations, compatibility with WP4.0. [Sep 8, 2014]
* V4.24: Minor refactoring changes. [May 7, 2014]
* V4.23: Compatibility with WordPress V3.9. [Apr 18, 2014]
* V4.22: Bug fix. [Apr 8, 2014]
* V4.21: Major coding and translation improvements. [Apr 8, 2014]
* V4.10: Internationalization. [Apr 4, 2013]
* V4.00: Adding a translation interface, and refactoring admin page functionality. [Mar 22, 2014]
* V3.60: Compatibility checks for WordPress V3.8. Minor changes on admin page. [Dec 20, 2013]
* V3.50: Compatibility checks for WordPress V3.7. [Nov 11, 2013]
* V3.40: Compatibility with WP3.6. Improvements in help tooltips. [Aug 10, 2013]
* V3.31: Fixing internationalization using Google/Microsoft Translate Widgets. [May 17, 2013]
* V3.30: Introducing internationalization using Google/Microsoft Translate Widgets. [May 17, 2013]
* V3.20: Correcting W3C markup validation errors on the admin page. [Apr 27, 2013]
* V3.14: Documentation changes only. [Apr 6, 2013]
* V3.13: Proper session initialization. [Mar 30, 2013]
* V3.12: Proper use of SESSION variables. [Feb 18, 2013]
* V3.11: Bug fixes (Fatal error: Call-time pass-by-reference has been removed). [Jan 28, 2013]
* V3.10: Admin interface modifications. [Sep 30, 2012]
* V3.08: Taking care of some debug notices from WordPress debug mode. [Aug 30, 2012]
* V3.07: Minor changes to the admin page. [July 18, 2012]
* V3.06: Testing compatibility with WP 3.4. [July 11, 2012]
* V3.05: Renaming a function, consolidating image resources and trimming auxiliary files. [May 24, 2012]
* V3.04: Renaming the plugin to drop the word Lite. [May 11, 2012]
* V3.03: Updating a screenshot. [Nov 19, 2011]
* V3.02: Making a Pro and Lite version for public release. [Nov 15, 2011]
* V3.01: Documentation and admin-page display changes. Non-critical. [Aug 30, 2011]
* V3.00: Fixed the Preview button. First commercial release. [July 28, 2011]
* V2.00: Verifying compatability up to WP3.2. Changes in the documentation. [June 22, 2011]
* V1.71: Fixing the problem of the theme stylesheet overwriting the tweaked colors. [August 14, 2009]
* V1.70: Changed stylesheet saving methods to something simpler and more elegant. [July 14, 2009]
* V1.63: Generate random colors locally using JavaScript. [May 8, 2009]
* V1.62: New option to launch a preview window from the Theme Tweaker interface. [Apr 28, 2009]
* V1.61: Further improvements of the admin menu interface to make it XHTML transitional 1.0 valid (according to W2C). [Apr 19, 2009]
* V1.60: Major overhaul of the interface. New clean look with javascript tooltips. New options to clean up the database entries. [Apr 12, 2009]
* V1.50: Option to suppress the credit link "Theme Tweaker by Unreal". [Apr 5, 2009]
* V1.43: Documentation and interface improvements only. [Feb 15, 2009]
* V1.42: Another good bug fix -- *Theme Tweaker* can now deal with url(image) specifications in the style.css file. [Feb 12, 2009]
* V1.41: A major bug fix -- *Theme Tweaker* now handles multi-line CSS blocks properly. [Feb 11, 2009]
* V1.40: Child theme generation. [Jan 30, 2009]
* V1.30: New bulk action -- Randomize Colors. [Jan 7, 2009]
* V1.23: Added title attribute on color patches. [Jan 1, 2009]
* V1.22: Added Sepia option. [Dec 26, 2008]
* V1.21: Easier link in the Plugins page, better documentation. [Dec 17, 2008]
* V1.20: Optimized the generated CSS to minimize its size. Tested with WordPress 2.7. [Dec 13, 2008]
* V1.12: Fixed the conflict between WordPress theme preview and theme-tweaker. Eliminated the limitation of button/background bitmaps being ignored. [Dec 8, 2008]
* V1.11: Fixed a stupid bug (forgot to remove test code, sorry).
* V1.10: Added the ability to save the tweaked color scheme to a stylesheet for uploading. Used WordPress stylesheets for better look and feel integration in the blog admin pages.
* V1.00: Initial release. [Dec 5, 2008]

== Limitations ==

1. *Theme Tweaker* works only on the colors found in the theme stylesheet. If you have plugins that introduce their own color schemes, they are not tweaked.
2. Images (especially background images and transparent GIFs) may not match your new color scheme (which is more of a design preference rather than a limitation the plugin).
3. *Theme Tweaker* handles only standard color specifications (#rgb, #rrggbb or the 16 colors W3C colors -- Aqua, Black, Blue, Fuchsia, Gray, Green, Lime, Maroon, Navy, Olive, Purple, Red, Silver, Teal, White, Yellow). It does not (yet) handle the rare RGB(r,g,b) or fancier color mnemonic specification in stylesheets.
4. *Theme Tweaker* may have trouble with some multi-line descriptions in style.css (rare).

== Credit ==

* *Theme Tweaker* uses the excellent Javascript color picker by [JSColor](http://jscolor.com "Javascript color picker").

