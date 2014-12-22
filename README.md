# TimVideos Developers Website

[![Build Status](https://travis-ci.org/timvideos/website.svg?branch=master)](https://travis-ci.org/timvideos/website)

## How to contribute to TimVideos Developer website?

Editing content is now very easy on _TimVideos Developer Website_. The website uses powerful [**prose content editor**](prose.io) to provide easy interface to edit/add and delete content.

### If you have ability to push to master repository

In that case to generate the website with your changes you need to commit and push your changes to master repository. You can do this;
 * Manually, using normal git and your local text editor,
 * Using the GitHub online editor, or
 * Prose editor described below.

Website will be generated and update about 1 minute after your commit. If page generation fail, you will receive email from Travis CI.

### If you don't have ability to push to master repository

1. Fork it ( <https://github.com/timvideos/website/fork> )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Edit content with your favourite content editor (Prose, GitHub, etc.)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

Website with your changes will be generated after pull request merge.

## How to edit existing content?

![](http://drive.google.com/uc?export=view&id=0B01dRm0dflH1U3gydHhQclNzdWc)

Every editable page on website has small and red edit icon (![](http://drive.google.com/uc?export=view&id=0B01dRm0dflH1TzQxRnM3RnlyZ1U)) on the right top part of editable box. If you click on that link you will be redirected to TimVideos instance of prose editor ([http://editor.timvideos.us](http://editor.timvideos.us)). You can read more about prose editor in [prose/prose](http://github.com/prose/prose) GitHub repository and on [Prose.io Wiki](https://github.com/prose/prose/wiki).

On the right side of editor you can see 3-5 buttons:
- **Edit** - if you want to edit content
- **Preview** - if you want to see realistic preview of your changes
- **Meta Data** - if you want to edit meta data available for Jekyll (tags, page title, layout, etc.)
- **Settings** - if you want to change file path or delete file
- **Save** - if you want to commit your changes. If you click on that button you will see difference between file after and before your changes.

**Before saving/submiting change request you need to authorize Prose editor. To do that, just go to [http://editor.timvideos.us](http://editor.timvideos.us) and click 'Authorize on GitHub'**

On the top bar of **Prose** editor you can see few options that are standard in every text editor.

## How to add new page to website?

![](http://drive.google.com/uc?export=view&id=0B01dRm0dflH1eEthUldnNFl4Ym8)

If you want to add new page to website you need to go to <http://editor.timvideos.us>, select timvideos/website repository or your fork, click on big, green button 'NEW FILE'.
Select your filename (remember filename is also a path for your page, ie. if you create page named hdmi2usb-history.md, your page will be accessible via http://code.timvideos.us/hdmi2usb-history), on the top of file content add metadata:

      ---
      layout: default
      tags: test
      title: Your title.
      ---

And add content below, then click on **Save** and after one minute your page will be generated.

# Commit to the base repository (master branch) if you want to generate website!

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/9f3b89d7feac43bbbd791b9313d2e7e3 "githalytics.com")](http://githalytics.com/github.com/timvideos)
