package RedLandMySql;

use strict;
use warnings;

use Catalyst::Runtime 5.70;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use parent qw/Catalyst/;
use Catalyst qw/-Debug
                ConfigLoader
                Static::Simple
          StackTrace

/;
our $VERSION = '0.01';

# Configure the application.
#
# Note that settings in redlandmysql.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config( name => 'RedLandMySql' );
my $jquery_version = '1.3.2';
my $jquery_ui_version = '1.7.1';

__PACKAGE__->config(
    default_view => 'TT',
    'View::TT' => {
    },
);

# Start the application
__PACKAGE__->setup();


=head1 NAME

RedLandMySql - Catalyst based application

=head1 SYNOPSIS

    script/redlandmysql_server.pl

=head1 DESCRIPTION

[enter your description here]

=head1 SEE ALSO

L<RedLandMySql::Controller::Root>, L<Catalyst>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
