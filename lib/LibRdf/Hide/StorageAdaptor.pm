#package LibRdf::Model::StorageAdaptor;
#use strict;
#use warnings;
#use Data::Dumper;
#use base 'Catalyst::Model::Adaptor';

# __PACKAGE__->config( 
#     class       => 'RDF::Redland::Storage',
# #    constructor => 'create',
# );

#  sub _create_instance {
# # #    warn "TEST" . Dumper(@_);
# #     my ($self, $app) = @_;
# # #    my $constructor = $self->{constructor} || 'new';
# #     my $args = $self->prepare_arguments($app);
# #     my $adapted_class = $self->{class};
# #     return $adapted_class->new($self->mangle_arguments($args));
# # #    bless( {
# # #                 'class' => 'RDF::Redland::Storage',
# # #                 'catalyst_component_name' => 'LibRdf::Model::StorageAdaptor'
# # #               }, 'LibRdf::Model::StorageAdaptor' );

#      return new RDF::Redland::Storage("hashes", "test", "new='yes',hash-type='memory'");
# #     return undef;

#  }

# sub mangle_arguments {
#     my ($self, $args) = @_;
#     return $args;
# }

# sub prepare_arguments {
#     my ($self, $app) = @_;
#     warn "ARGUMENT" . Dumper([@_]);
# #ARGUMENT$VAR1 = bless( {
# #                 'class' => 'RDF::Redland::Storage',
# #                 'catalyst_component_name' => 'LibRdf::Model::StorageAdaptor'
# #               }, 'LibRdf::Model::StorageAdaptor' );
# #$VAR2 = 'LibRdf';
#     return exists $self->{args} ? $self->{args} : {};
# }

# sub create
# {
#     warn Dumper(@_);
#     return undef;
# }
#1;
