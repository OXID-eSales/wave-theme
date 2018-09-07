# Wave Theme

## General Information

*Wave* is a responsive theme for all OXID eShop editions.

## Installation

### Step 1: Get the source code

```
composer config repositories.oxid-esales/wave-theme vcs https://github.com/OXID-eSales/wave-theme
composer require oxid-esales/wave-theme
```

### Step 2: Prepare the database (< version 6.0 only)

In order to install the theme options, import the ``setup.sql`` (to be found in ``DOCUMENT_ROOT/source/Application/views/wave``) into your database.

#### Option 1: Console

``mysql -u MYSQL_USER -p SHOP_DATABASE < wave/setup.sql``

#### Option 2: Shop Admin: Service -> Tools

If you have a local copy of wave files, go to Service -> Tools in Shop Admin, upload wave/setup.sql and click "start update" button

### Step 3: Activate theme 

Log into the admin panel, go to *Extensions → Themes → Wave* and press the *Activate* button. Clean the cache and off you go!

## Development

All *Wave* theme related CSS/Javascript files can be found in theme's ``build`` directory. To regenerate the theme's assets, the ``grunt`` tasks should be used. Please install ``grunt`` and run ``grunt's`` default task to regenerate all minimized ``css`` and ``js`` files:

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
    sudo npm install
    ```

4. Now its possible to regenerate "wave" theme assets by running ``grunt`` default
task while being in "wave" directory:

	```
	grunt
	```

## Contributing

If you are interested in contributing of some changes, Please read [CONTRIBUTING.md](CONTRIBUTING.md) file for more information.

## Issues

Please forward all issues to https://bugs.oxid-esales.com/ for the project **Wave Theme**.

## License

Licensing of the software product depends on the OXID eShop edition used. The software for OXID eShop Community Edition is published under the GNU General Public License v3. You may distribute and/or modify this software according to the licensing terms published by the Free Software Foundation. Legal licensing terms regarding the distribution of software being subject to GNU GPL can be found under http://www.gnu.org/licenses/gpl.html. The software for OXID eShop Professional Edition and Enterprise Edition is released under commercial license. OXID eSales AG has the sole rights to the software. Decompiling the source code, unauthorized copying as well as distribution to third parties is not permitted. Infringement will be reported to the authorities and prosecuted without exception.
