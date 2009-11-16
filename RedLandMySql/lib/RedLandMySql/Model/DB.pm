package RedLandMySql::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';
use Secret::Database;

__PACKAGE__->config(
    schema_class => 'RedLandMySql::Schema',
    connect_info => [
        'dbi:mysql:introspector',
        $Secret::Database::user,
        $Secret::Database::password,        
    ],
);


#RedLandMySql::Schema::Statement->has_many('actorroles' => 'MyDB::Schema::ActorRole',                                'actor');


=head1 NAME



RedLandMySql::Model::DB - Catalyst DBIC Schema Model
=head1 SYNOPSIS

See L<RedLandMySql>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<RedLandMySql::Schema>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
