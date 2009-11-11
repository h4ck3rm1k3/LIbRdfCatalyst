use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'LibRdf' }
BEGIN { use_ok 'LibRdf::Controller::CreateModel' }

ok( request('/createmodel')->is_success, 'Request should succeed' );


