# Change Log for OXID eSales Wave Theme

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.3.0] - 2019-10-15

### Added
- Added missing for- and id-Attributes to many lines [PR-48](https://github.com/OXID-eSales/wave-theme/pull/48) 
in: 
  - user_billing.tpl
  - user_shipping.tpl
  - newsletter.tpl
  - user_account.tpl
  - user_noaccount.tpl
- Added missing help-block-Elements to salutations in user_billing.tpl and user_shipping.tpl [PR-48](https://github.com/OXID-eSales/wave-theme/pull/48)
- Added !default to all variables in variables.scss so it would be possible to overwrite them [PR-62](https://github.com/OXID-eSales/wave-theme/pull/62)
- Added the checkbox to enable/disable pricealarm tab in product id [PR-71](https://github.com/OXID-eSales/wave-theme/pull/71)
- Checkbox "Show home link in navigation" added to theme settings [PR-70](https://github.com/OXID-eSales/wave-theme/pull/70)
- Added a Hover message for disabled variant to Basket buttons [PR-69](https://github.com/OXID-eSales/wave-theme/pull/69)
- Added the text to "Display cart" button in modal basket [PR-55](https://github.com/OXID-eSales/wave-theme/pull/55)

### Changed
- Replaced the low-tech arrows in the pagination buttons with Font Awesome Icons [PR-51](https://github.com/OXID-eSales/wave-theme/pull/51)
- Changed block ``user_account_newsletter`` in form/fieldset/user_account.tpl from inner form-group to outer form-group
- Don't output the legal footer if oxstdfooter isn't there [PR-58](https://github.com/OXID-eSales/wave-theme/pull/58)
- Don't display the "products per page" flyout if there's only one option in it. [PR-49](https://github.com/OXID-eSales/wave-theme/pull/49)
- Made the modal minibasket look more like the flyout minibasket [PR-56](https://github.com/OXID-eSales/wave-theme/pull/56)
- Trim whitespaces in the search query and prevent empty searches [PR-53](https://github.com/OXID-eSales/wave-theme/pull/53)

### Deprecated

### Removed
- Remove not used scripts.min.js [PR-42](https://github.com/OXID-eSales/wave-theme/pull/42)
- Remove outdated econda keys from en translations [PR-52](https://github.com/OXID-eSales/wave-theme/pull/52)

### Fixed
- Do not show badge circle if its empty
- Fixed for- and id-Attribute of oxuser__oxsal in user_billing.tpl [PR-48](https://github.com/OXID-eSales/wave-theme/pull/48)
- Fixed the bootstrap offset classes in newsletter.tpl [PR-48](https://github.com/OXID-eSales/wave-theme/pull/48)
- Use sStartPageListDisplayType setting in Top seller start page block [PR-57](https://github.com/OXID-eSales/wave-theme/pull/57)
- Fix removal of items from basket on pressing Enter [#0007008](https://bugs.oxid-esales.com/view.php?id=7008) [PR-47](https://github.com/OXID-eSales/wave-theme/pull/47)
- Fix compare list remove link on details page [#0006979](https://bugs.oxid-esales.com/view.php?id=6979) [PR-59](https://github.com/OXID-eSales/wave-theme/pull/59)
- Fix first error field message disappearing right after validation [PR-45](https://github.com/OXID-eSales/wave-theme/pull/45)
- Fix More button and children in menu [PR-50](https://github.com/OXID-eSales/wave-theme/pull/50)
- Prevent main menu flyouts from protruding out of the viewport [PR-54](https://github.com/OXID-eSales/wave-theme/pull/54)
- Ensure that variables are assigned for widget product list and listitems.
- Add missing help-block elements for several billing/shipping address edit form fields [PR-64](https://github.com/OXID-eSales/wave-theme/pull/64)
- Display netto prices in netto mode in quantity block [#0006811](https://bugs.oxid-esales.com/view.php?id=6811) [PR-65](https://github.com/OXID-eSales/wave-theme/pull/65)
- Remove usages of broken Bootstrap selects [#0007007](https://bugs.oxid-esales.com/view.php?id=7007) [PR-63](https://github.com/OXID-eSales/wave-theme/pull/63)
- Remove adjustements to default Bootstrap small button [PR-61](https://github.com/OXID-eSales/wave-theme/pull/61)
- Remove duplicated integration of jqBootstrapValidation.min.js [PR-60](https://github.com/OXID-eSales/wave-theme/pull/60)
- Remove duplicated js includes in templates [PR-72](https://github.com/OXID-eSales/wave-theme/pull/72)

### Security

## [1.2.0] -  2019-07-16

### Added
- New blocks:
  - `form/fieldset/user_shipping.tpl`  
    - form_user_shipping_address_actions
    - form_user_shipping_address_edit_action
    - form_user_shipping_address_delete_action
  - `widget/footer/services.tpl`
    - footer_services_cart
- Add stoken parameter to remove voucher link
- Add js sourcemaps [PR-40](https://github.com/OXID-eSales/wave-theme/pull/40)
    
### Fixed
- Fix "Brands" slider size when no brands available [PR-32](https://github.com/OXID-eSales/wave-theme/pull/32)
- Fix "sBackgroundPosVertical" config variable constraints [PR-33](https://github.com/OXID-eSales/wave-theme/pull/33)
- Fix box height in My account [PR-35](https://github.com/OXID-eSales/wave-theme/pull/35)
- Fix selectlists select functionality in product details [PR-37](https://github.com/OXID-eSales/wave-theme/pull/37)
- Do not use deprecated getSession of Base class
- Fix HTML syntax error in oxaddress__oxfname req [PR-41](https://github.com/OXID-eSales/wave-theme/pull/41)
- Fix wrong translations and icon in 404 and offline pages [PR-38](https://github.com/OXID-eSales/wave-theme/pull/38)
- Fix 404 page animation [PR-39](https://github.com/OXID-eSales/wave-theme/pull/39)

### Changed
- Use relative path to load font files [#0006954](https://bugs.oxid-esales.com/view.php?id=6954) [PR-30](https://github.com/OXID-eSales/wave-theme/pull/30)
- Add space above Log Out button [PR-34](https://github.com/OXID-eSales/wave-theme/pull/34)

## [1.1.0] -  2019-04-12

### Added
- New blocks:
  - `page/checkout/inc/basketcontents.tpl`
    - checkout_basketcontents_summary_table_inner [Flow PR-148](https://github.com/OXID-eSales/flow_theme/pull/148)
  - `page/search/search.tpl`
    - search_bottom_listlocator [Flow PR-141](https://github.com/OXID-eSales/flow_theme/pull/141)

### Fixed
- Remove the unsupported font-smooth property [Flow PR-144](https://github.com/OXID-eSales/flow_theme/pull/144)
- [0006958](https://bugs.oxid-esales.com/view.php?id=6958) Remove unnecessary closing "strong" tags [Flow PR-147](https://github.com/OXID-eSales/flow_theme/pull/147)

### Changed
- Remove scheme from href of product external url [Flow PR-142](https://github.com/OXID-eSales/flow_theme/pull/142)
- Update bootstrap to 4.1.3 [PR-36](https://github.com/OXID-eSales/wave-theme/pull/36)

## [1.0.1] -  2019-01-22

### Changed

- Added information for theme development to README.md

## 1.0.0 -  2019-01-21

[1.3.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.3.0...HEAD
[1.2.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.0...v1.0.1