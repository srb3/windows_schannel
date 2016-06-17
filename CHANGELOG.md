# windows_schannel Cookbook CHANGELOG

This file is used to list changes made in each version of the windows_schannel cookbook.

## 0.1.2 - (17-06-2016)
- Fixed some typo's in the README ready for relase to the supermarket.

## v0.1.1 (16-06-2016)

- Changed the attribute values to make it easier to read rather than 1 or 0, means it is now caSe sensitive
but I think its worth the trade off as its easier to interpret
- Added support for Hashes (MD5 and SHA) and Keyexchanges (DH)
- Refactored the ciphers to loop based on foodcritic
- Added reboot notifier for protocol changes.

## v0.1.0 (20-04-2016)

- Building the framework of the cookbook.