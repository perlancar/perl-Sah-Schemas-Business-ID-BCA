package Sah::Schema::business::id::bca::account_num;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    summary => 'BCA account number',
    prefilters => ['Str::remove_nondigit', 'Business::ID::BCA::check_account_num'],
    description => <<'MARKDOWN',

Note that this schema only accepts 10-digit regular account number and not virtual account number.

MARKDOWN
    examples => [
        {value=>'', valid=>0, summary=>'Empty string'},
        {value=>'123', valid=>0, summary=>'Too short'},
        {value=>'1310558032', valid=>1},
    ],
}];

1;

# ABSTRACT:
