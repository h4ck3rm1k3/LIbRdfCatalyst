
my $ansi_schema = DBICTest::Schema->connect ($dsn, $user, $pass, { on_connect_call => 'set_strict_mode' });

$ansi_schema->resultset('Artist')->create ({ name => 'last created artist' });

ok my $artist1_rs = $ansi_schema->resultset('Artist')->search({artistid=>6666})
    => 'Created an artist resultset of 6666';

is $artist1_rs->count, 0
    => 'Got no returned rows';

ok my $artist2_rs = $ansi_schema->resultset('Artist')->search({artistid=>undef})
    => 'Created an artist resultset of undef';

is $artist2_rs->count, 0
    => 'got no rows';

my $artist = $artist2_rs->single;

is $artist => undef
      => 'Nothing Found!';
