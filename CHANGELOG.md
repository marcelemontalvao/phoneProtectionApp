# Changelog

## [Unreleased]

## [0.1.0] - 2026-04-13

### Added
- Created Rails project setup
- Configured database and ran initial migrations
- Implemented Phone model with attributes (brand, model, price)
- Implemented Claim model with attributes (claim_type, description, status, phone_id)
- Added association between Phone and Claim (has_many / belongs_to)
- Created PhonesController with basic CRUD (index, new, create)
- Created ClaimsController with basic CRUD (index, new, create)
- Implemented basic views for Phones (form and index)
- Implemented basic views for Claims (form and index)

### Changed

### Fixed
- Fixed syntax error in PhonesController (extra `end`)
- Fixed variable naming in ClaimsController (`@claim` instead of `@claims`)