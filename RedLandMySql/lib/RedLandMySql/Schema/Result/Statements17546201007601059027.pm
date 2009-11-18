package RedLandMySql::Schema::Result::Statements17546201007601059027;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("Statements17546201007601059027");
__PACKAGE__->add_columns(
  "subject",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "predicate",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "object",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
  "context",
  { data_type => "BIGINT", default_value => undef, is_nullable => 0, size => 20 },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-16 08:56:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:By2eeZpRreoXASiZk8Zy6w

# __PACKAGE__->might_have(
#     subject_resources =>
#     'RedLandMySql::Schema::Result::Resources',
#     'id',
#   );


# __PACKAGE__->might_have(
#     predicate_resources =>
#     'RedLandMySql::Schema::Result::Resources',
#     'id',
#   );

# __PACKAGE__->might_have(
#     predicate_literals =>
#     'RedLandMySql::Schema::Result::Literals',
#     'id',
#   );


#    subject_resources =>    '',
#    'id',
__PACKAGE__->might_have( statment_literal        => 'RedLandMySql::Schema::Result::Literals', {   'foreign.id' => 'self.object'  }); # value
__PACKAGE__->might_have( statement_subject_res   => 'RedLandMySql::Schema::Result::Resources', {   'foreign.id' => 'self.subject'  }); #,{join_type => "LEFT"}
__PACKAGE__->might_have( statement_object_res    =>  'RedLandMySql::Schema::Result::Resources',    { 'foreign.id' => 'self.object' },    );
__PACKAGE__->might_have( statement_predicate_res => 'RedLandMySql::Schema::Result::Resources',    { 'foreign.id' => 'self.predicate'  });  #,{join_type => "LEFT"}
__PACKAGE__->might_have( statement_object_res    => 'RedLandMySql::Schema::Result::Resources',    { 'foreign.id' => 'self.object' },    );


__PACKAGE__->might_have( Chained    => 'RedLandMySql::Schema::Result::Statements17546201007601059027',    
			 { 
			     'foreign.subject' => 'self.object' ,
#			     'self.predicate'  =>  4114558830764260770
			 },    
    );





#__PACKAGE__->has_many('actorroles' => 'MyDB::Schema::ActorRole',                                'actor');



# You can replace this text with custom content, and it will be preserved on regeneration
1;
