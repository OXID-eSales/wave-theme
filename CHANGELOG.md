# Change Log for OXID eSales Wave Theme

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

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

[1.2.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/OXID-eSales/wave-theme/compare/v1.0.0...v1.0.1