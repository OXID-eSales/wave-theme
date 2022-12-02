# Change Log for OXID eSales Wave Theme

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.8.0] - 2022-12-02

### Changed
- Switch from using Google Fonts API to self-hosted font files storage

### Fixed
- Bootstrap version in `package.json` set to v4.3.1

## [1.7.0] - 2022-11-15

### Added
- Template blocks on login form:
  - `checkout_options_login_passwordfield` in `login.tpl`
  - `checkout_options_loginaccount_passwordfield` in `login_account.tpl`
  - `checkout_options_loginaccount_submitbutton` in `login_account.tpl`

## [1.6.2] - 2022-07-18

### Fixed
- CONTRIBUTING link

## [1.6.1] - 2021-07-07

### Fixed
- Use getTitle from controller, but not actCategory, which is not always available [PR-120](https://github.com/OXID-eSales/wave-theme/pull/120)
- Fix multilang in errors_modal.tpl [PR-119](https://github.com/OXID-eSales/wave-theme/pull/119)
- Add missing actions.tpl for Actions widget [PR-121](https://github.com/OXID-eSales/wave-theme/pull/121)

## [1.6.0] - 2021-03-12

### Added
- Add the autocomplete HTML attributes to most HTML input fields [PR-107](https://github.com/OXID-eSales/wave-theme/pull/107)
- Sku and offer url microdata added [PR-108](https://github.com/OXID-eSales/wave-theme/pull/108)
- New blocks:
  - ``captcha_form`` in:
    - ``tpl/form/forgotpwd_email.tpl`` [Flow-PR-163](https://github.com/OXID-eSales/flow_theme/pull/163)
    - ``tpl/form/newsletter.tpl`` [Flow-PR-163](https://github.com/OXID-eSales/flow_theme/pull/163)
  - in ``tpl/widget/product/list``:
    - ``widget_product_list`` [PR-113](https://github.com/OXID-eSales/wave-theme/pull/113)
    - ``widget_product_list_head`` [PR-113](https://github.com/OXID-eSales/wave-theme/pull/113)
    - ``widget_product_list_item`` [PR-113](https://github.com/OXID-eSales/wave-theme/pull/113)
  - ``salutation_options`` in ``tpl/form/fieldset/salutation.tpl`` [PR-112](https://github.com/OXID-eSales/wave-theme/pull/112)
  - ``page_account_forgot_email_sent`` in ``tpl/page/account/forgotpwd.tpl`` [PR-115](https://github.com/OXID-eSales/wave-theme/pull/115)
  - in ``tpl/email/html/order_cust.tpl`` [PR-116](https://github.com/OXID-eSales/wave-theme/pull/116):
    - ``email_html_order_cust_basketitem_title``
    - ``email_html_order_cust_basketitem_sellist``
    - ``email_html_order_cust_basketitem_persparams``
    - ``email_html_order_cust_basketitem_artnum``
    - ``email_html_order_cust_basketitem_unitprice``
    - ``email_html_order_cust_basketitem_discounts``
    - ``email_html_order_cust_basketitem_orderinfo``
    - ``email_html_order_cust_basketitem_amount``
    - ``email_html_order_cust_basketitem_vat``
    - ``email_html_order_cust_basketitem_price``
  - in ``tpl/email/plain/order_cust.tpl`` [PR-116](https://github.com/OXID-eSales/wave-theme/pull/116):
    - ``email_plain_order_cust_title``
    - ``email_plain_order_cust_sellist``
    - ``email_plain_order_cust_persparams``
    - ``email_plain_order_cust_orderinfo``
    - ``email_plain_order_cust_unitprice``
    - ``email_plain_order_cust_amount``
    - ``email_plain_order_cust_vat``
    - ``email_plain_order_cust_price``

### Deprecated
- ``setup.sql`` file is deprecated.

### Fixed
- Reviews and availability microdata fixed [PR-108](https://github.com/OXID-eSales/wave-theme/pull/108)
- Fix manufacturer logo display in product ID, in case logo image configured to be big [PR-114](https://github.com/OXID-eSales/wave-theme/pull/114)

## [1.5.0] - 2020-11-09

### Added
- New blocks:
    - `user_checkout_noregistration_shipping_address_body` in `tpl/form/user_checkout_noregistration.tpl` [PR-109](https://github.com/OXID-eSales/wave-theme/pull/109)
    - `user_checkout_registration_shipping_address_body` in `tpl/form/user_checkout_registration.tpl` [PR-109](https://github.com/OXID-eSales/wave-theme/pull/109)
    - `checkout_basketcontents_list` in `tpl/page/checkout/inc/basketcontents.tpl` [PR-109](https://github.com/OXID-eSales/wave-theme/pull/109)
    - `checkout_basketcontents_basketitem_end` in `tpl/page/checkout/inc/basketcontents_list.tpl` [PR-109](https://github.com/OXID-eSales/wave-theme/pull/109)
    - `checkout_order_address_inner` in `tpl/page/checkout/order.tpl` [PR-109](https://github.com/OXID-eSales/wave-theme/pull/109)

### Fixed
- Email validation regex [PR-103](https://github.com/OXID-eSales/wave-theme/pull/103)
- Turn on validation on salutation field if required [PR-106](https://github.com/OXID-eSales/wave-theme/pull/106)
- Removed unwanted quotation mark in ``productmain.tpl`` html [PR-73](https://github.com/OXID-eSales/wave-theme/pull/73)
- Correction of Div due to schema.org offers [PR-105](https://github.com/OXID-eSales/wave-theme/pull/105)
- Variantselector doesn't work in List View listitem_line in wave and flow [#0007163](https://bugs.oxid-esales.com/view.php?id=7163) [Flow-PR-162](https://github.com/OXID-eSales/flow_theme/pull/162)

## [1.4.0] - 2020-07-09

### Added
- New blocks:
  - `form/newsletter.tpl`  
    - newsletter_form_fields
    - newsletter_form_button
  - ``user_account_password`` in ``tpl/form/forgotpwd_change_pwd.tpl`` [Flow-PR-154](https://github.com/OXID-eSales/flow_theme/pull/154)
  - ``user_account_password`` in ``tpl/form/user_password.tpl`` [Flow-PR-154](https://github.com/OXID-eSales/flow_theme/pull/154)
  - ``checkout_order_agb`` in ``tpl/page/checkout/order.tpl`` [PR-84](https://github.com/OXID-eSales/wave-theme/pull/84)
  - ``tpl/widget/dynscript.tpl``
    - google_analytics [PR-88](https://github.com/OXID-eSales/wave-theme/pull/88)
    - google_analytics_ecommerce [PR-88](https://github.com/OXID-eSales/wave-theme/pull/88)
  - ``checkout_order_agb_inner`` in ``tpl/page/checkout/inc/agb.tpl`` [PR-101](https://github.com/OXID-eSales/wave-theme/pull/101)
  - ``form_user_billing_birthdate`` in ``tpl/form/fieldset/user_billing.tpl`` [PR-99](https://github.com/OXID-eSales/wave-theme/pull/99)
- Added a badge span to the counters at the header [PR-44](https://github.com/OXID-eSales/wave-theme/pull/44)

### Fixed
- Fix price information structure by schema.org [PR-85](https://github.com/OXID-eSales/wave-theme/pull/85)
- Use schema.org specification for breadcrumbs [#0007080](https://bugs.oxid-esales.com/view.php?id=7080) [PR-83](https://github.com/OXID-eSales/wave-theme/pull/83)
- Remove duplicate id of birthdate field [PR-86](https://github.com/OXID-eSales/wave-theme/pull/86)
- Fix align of text in basket delivery tax row [PR-100](https://github.com/OXID-eSales/wave-theme/pull/100)
- Avoid empty row before subcategories list [PR-98](https://github.com/OXID-eSales/wave-theme/pull/98)
- Add missing config bl_showPriceAlarm variable to setup.sql
- Fix wrapping in order/shipping email on small viewport [Flow PR-158](https://github.com/OXID-eSales/flow_theme/pull/158)

### Renamed
- Rename price alert/alarm to wished price

## [1.3.1] - 2019-11-15

### Added
- Fixed syntax error in setup.sql [PR-80](https://github.com/OXID-eSales/wave-theme/pull/80) 

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

[1.8.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.7.0...v1.8.0
[1.7.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.6.2...v1.7.0
[1.6.2]: https://github.com/OXID-eSales/wave-theme/compare/v1.6.1...v1.6.2
[1.6.1]: https://github.com/OXID-eSales/wave-theme/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.3.1...v1.4.0
[1.3.1]: https://github.com/OXID-eSales/wave-theme/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.0...v1.0.1
