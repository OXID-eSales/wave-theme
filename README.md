# Wave Theme

## General Information

*Wave* is a responsive theme for all OXID eShop editions. Theme is built on the top of [Flow theme](https://github.com/OXID-eSales/flow_theme).

## Installation
If you want to extend the theme you need to clone the repository (see section development) as some soures are ignored on composer installation. 


### Step 1: Get the source code

This step is only required if the theme is not delivered with the OXID distribution.
```
composer require oxid-esales/wave-theme
```

### Step 2: Prepare the database 

In order to install the theme options, import the ``setup.sql`` (to be found in ``DOCUMENT_ROOT/source/Application/views/wave``) into your database.

#### Option 1: Console

``mysql -u MYSQL_USER -p SHOP_DATABASE < wave/setup.sql``

#### Option 2: Shop Admin: Service -> Tools

If you have a local copy of wave files, go to Service -> Tools in Shop Admin, upload wave/setup.sql and click "start update" button

### Step 3: Activate theme 

Log into the admin panel, go to *Extensions → Themes → Wave* and press the *Activate* button. Clean the cache and off you go!

## Development

All *Wave* theme related CSS/Javascript files can be found in theme's ``build`` directory. To regenerate the theme's assets, the ``grunt`` tasks should be used. Please install ``grunt`` and run ``grunt's`` default task to regenerate all minimized ``css`` and ``js`` files:

To get the development files you need to clone the repository

	cd DOCUMENT_ROOT/Application/views/
	git clone -b BRANCH_NAME https://github.com/OXID-eSales/wave-theme.git wave
	
1. To use ``grunt``, ``npm`` is required. Check ``nodejs`` website for installation
instructions (https://nodejs.org/en/download/package-manager/). Example of
Installation on ubuntu system:

	```
	curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
	sudo apt-get install -y nodejs
	```

2. Install ``grunt`` globally. Example:

	```
    sudo npm install -g grunt-cli
    ```

3. Go to "wave" theme's directory and install all related ``grunt`` plugins:

	```
    cd DOCUMENT_ROOT/Application/views/wave/
    npm install
    ```

4. Now its possible to regenerate "wave" theme assets by running ``grunt`` default
task while being in "wave" directory:

	```
	grunt
	```

## Contributing

If you are interested in contributing of some changes, Please read [CONTRIBUTING.md](CONTRIBUTING.md) file for more information.

## Compatibility

1. Visual CMS
- In the module settings you need to deacticvate the inclusion of Bootstrap and JQuery
- Compatible with visual CMS 3.3.0 (https://github.com/OXID-eSales/visual_cms_module/commit/75bc2a8f05cd8f2b76b6383eb6213c994494a6ee)

2. PayPal module
- The PayPal module contains in a tpl file a check for the theme id ```[{if $oViewConf->getActiveTheme()=='flow'}]``` which should be adjusted to wave

3. B2B Edition
- The B2B Edition contains in tpl files a check for the theme id ```[{if $oViewConf->getActiveTheme()=='flow'}]``` which should be adjusted to wave

## Issues

Please forward all issues to https://bugs.oxid-esales.com/ for the project **Wave Theme**.
