package RedLandMySql::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

my $jquery_version = '1.3.2';
my $jquery_ui_version = '1.7.1';

__PACKAGE__->config(
    default_view => 'TT',
    'View::TT' => {
        'JavaScript::Framework::jQuery' => {
            library => {
                src => [
                "http://ajax.googleapis.com/ajax/libs/jquery/${jquery_version}/jquery.min.js",
                "http://ajax.googleapis.com/ajax/libs/jqueryui/${jquery_ui_version}/jquery-ui.min.js",
                ],
                css => [
                {
                    href => '/static/css/theme/jquery-ui.custom.css',
                    media => 'all',
                },
                ],
            },
            plugins => [
                {
                    name => 'Superfish',
                    library => {
                        src => [
                        '/static/js/hoverIntent.js',
                        '/static/js/superfish.js',
                        '/static/js/supersubs.js',
                        ],
                        css => [
                        { href => '/static/css/superfish.css', media => 'all' },
                        { href => '/static/css/superfish-vertical.css', media => 'all' },
                        { href => '/static/css/superfish-navbar.css', media => 'all' },
                        { href => '/static/site/css/superfish.css', media => 'all' },
                        { href => '/static/site/css/superfish-skin.css', media => 'all' },
                        ],
                    },
                },
            ],
        },
    },
);

#__PACKAGE__->setup;

=head1 NAME

RedLandMySql::Controller::Root - Root Controller for RedLandMySql

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

 # sub begin :Private {
 #     my ($self, $c) = @_;
 #     $c->view('TT')->jquery->construct_plugin(
 # 	 name => 'Superfish',
 # 	 target_selector => '#navbar',
 # 	 );
 #     my $menu = CatalystX::Menu::Suckerfish->new(
 #        context => $c,
 #        ul_id => 'navmenu',         # <ul id="navmenu"> ... </ul>
 #        ul_class => 'sf-menu',      # <ul id="navmenu" class="sf-menu"> ... </ul>
 #        text_container => {         # wrap plain text nodes in this HTML element
 #            element => 'span',      #  so that styles can be applied if desired.
 #            attrs => {
 #                class => 'myspan',
 #            },
 #        },
 #        top_order => [qw(Home * About)],    # Put Home and About on the ends,
 #                                            #  everything else in-between
 #        filter => sub {                     # Filter out actions we don't want in menu
 #            my ($c, %actions) = @_;
 #            return
 #                map {$_, $actions{$_}}
 #                grep {$actions{$_}->can_visit($c)}
 #                grep {UNIVERSAL::isa($actions{$_}, 'Catalyst::Action::Role::ACL')}
 #                keys %actions;
 #        },
 #        add_nodes => [      # add a menu node manually
 #            {
 #                menupath => '/Bargains',
 #                menutitle => 'Cheap stuff',
 #                uri => '/products/cheap',
 #            },
 #        ],
 #     );
 #     $c->session->{navmenu} = $menu->output;
 #     # include the UL element in your Template: [% c.session.navmenu %]
 # }



use CatalystX::Menu::Suckerfish;

__PACKAGE__->config(namespace => q{});

sub begin :Private {
    my ( $self, $c ) = @_;

    my $suckerfish = CatalystX::Menu::Suckerfish->new(
        context => $c,
        ul_id => 'navmenu',
        ul_class => 'sf-menu',
        menupath_attr => 'MenuPath',
        menutitle_attr => 'MenuTitle',
        text_container => {
            element => 'span',
            attrs => { class => 'sf-label' },
        },
        add_nodes => [
            {
                menupath => '/Other sites/Google',
                menutitle => 'Google',
                uri => 'http://google.com',
            },
            {
                menupath => '/Other sites/Yahoo',
                menutitle => 'Yahoo',
                uri => 'http://yahoo.com',
            },
        ],
    );

    $c->view('TT')->jquery->construct_plugin(
        name => 'Superfish',
        target_selector => 'ul.sf-menu',
        use_supersubs => 1,
        options =>
'delay : 500,
animation : { opacity : "show" },
dropShadows : true',
        supersubs_options =>
'minWidth : 12,
maxWidth : 13,
extraWidth : 1',
    );

    $c->stash(menu => $suckerfish->output);
}

#sub end :Private {
#    my ( $self, $c ) = @_;
#    $c->forward('TestApp::View::TT') unless $c->res->body;
#}




=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR


James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
