package RedLandMySql::Schema_new::Result::Chainedstatementsstop;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::DateTime", "Core");
__PACKAGE__->table("ChainedStatementsStop");
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


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-11-21 10:05:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mRMv56eFxe+LiODYZm2jsg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
