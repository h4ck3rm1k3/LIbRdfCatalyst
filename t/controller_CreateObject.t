use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'LibRdf' }
BEGIN { use_ok 'LibRdf::Controller::CreateObject' }

ok( request('/createobject')->is_success, 'Request should succeed' );


