use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'RedLandMySql' }
BEGIN { use_ok 'RedLandMySql::Controller::Statements' }

ok( request('/statements')->is_success, 'Request should succeed' );


