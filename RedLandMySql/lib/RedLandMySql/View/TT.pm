package RedLandMySql::View::TT;

use strict;
#use base 'Catalyst::View::TT';

 use Moose;
 extends 'Catalyst::View::TT';
 with 'Catalyst::View::Component::jQuery';

use Template::Constants qw( :debug );

__PACKAGE__->config(TEMPLATE_EXTENSION => '.tt',
		    , EVAL_PERL => 1
		    , 'RECURSION' => 1
		    ,		     DEBUG => DEBUG_PARSER | DEBUG_PROVIDER
#| DEBUG_ALL
);

=head1 NAME

RedLandMySql::View::TT - TT View for RedLandMySql
x
=head1 DESCRIPTION

TT View for RedLandMySql. 

=head1 SEE ALSO

L<RedLandMySql>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
