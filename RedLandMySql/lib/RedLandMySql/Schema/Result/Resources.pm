package RedLandMySql::Schema::Result::Resources;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("Resources");
__PACKAGE__->add_columns(
  "id",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "uri",
  {
    data_type => "TEXT",
    default_value => undef,
    is_nullable => 0,
    size => 65535,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:33:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Tx5CRiK4hvm1+RJgsq7gFg


# You can replace this text with custom content, and it will be preserved on regeneration

__PACKAGE__->has_many( 
    subject_statements => 
    'RedLandMySql::Schema::Result::Statements17546201007601059027',  
    'subject');

__PACKAGE__->has_many( 
    object_statements => 
    'RedLandMySql::Schema::Result::Statements17546201007601059027',  
    'object');

__PACKAGE__->has_many( 
    predicate_statements => 
    'RedLandMySql::Schema::Result::Statements17546201007601059027',  
    'predicate');


__PACKAGE__->has_many( 
    metadata => 
    'RedLandMySql::Schema::Result::OwlResource',  
    'id');
#    {   'foreign.id' => 'self.id'  }

#__PACKAGE__->might_have( statement_literal        => 'RedLandMySql::Schema::Result::Literals', {   'foreign.id' => 'self.object'  }); # value

#__PACKAGE__->belongs_to(
#    subject => 'RedLandMySql::Schema::Resources',  
#    'id',
#    { 
#	join_type => 'left' 
#    }
#  );


1;
