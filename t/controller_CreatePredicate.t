use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'LibRdf' }
BEGIN { use_ok 'LibRdf::Controller::CreatePredicate' }

ok( request('/createpredicate')->is_success, 'Request should succeed' );


