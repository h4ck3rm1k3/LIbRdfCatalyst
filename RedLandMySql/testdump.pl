

Statement.Object $VAR1 = 
    bless(
	{
	    '_source_handle' => bless( 
		{
		    'source_moniker' => 'Resources', 
		    'schema' => bless( {
			'class_mappings' => {
			    'RedLandMySql::Model::DB::Resources' => 'Resources', 
			    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
			    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
			'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
			'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
			'RedLandMySql::Model::DB::Models' => 'Models', 
			'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
			'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
			'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
			'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
			'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
			'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
			'RedLandMySql::Schema::Result::Models' => 'Models', 
			'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
			'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
			'RedLandMySql::Model::DB::Literals' => 'Literals', 
			'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
			'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		    }, 
			    'source_registrations' => {
				'Literals' => bless( {
				    'resultset_attributes' => {
					
				    }, 
				    'result_class' => 'RedLandMySql::Model::DB::Literals', 
				    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				    'name' => 'Literals', 
				    'schema' => $VAR1->{
					'_source_handle'

				    }
				    {
					'schema'
				    }, 
					    '_relationships' => {
						
					}, 
				    '_columns_info_loaded' => 0, 
				    'source_name' => 'Literals', 
				    '_ordered_columns' => [ 'id', 
							    'value', 
							    'language', 
							    'datatype' ], 
				    '_primaries' => [ 'id' ], 
				    'resultset_class' => 'DBIx::Class::ResultSet', 
				    '_unique_constraints' => {
					'primary' => $VAR1->{'_source_handle'}{'schema'}{    'source_registrations'}{   'Literals'}{   '_primaries'}   }, 
				    '_columns' => 
				    {
					
					'language' => {
					    'data_type' => 'TEXT', 
					    'default_value' => undef, 
					    'extra' => {		    }, 
					    'is_nullable' => 0, 
					    'size' => 65535 
					}, 
					'value' => {
					    'data_type' => 'LONGTEXT', 
					    'default_value' => undef, 
					    'extra' => {						    }, 
					    'is_nullable' => 0, 
					    'size' => 4294967295 
				    }, 
						
						'id' => {
						    'data_type' => 'BIGINT', 
						    'default_value' => undef, 
						    'extra' => {						    }, 
						    'is_nullable' => 0, 
						    'size' => 20 
					    }, 
							'datatype' => {
							    'data_type' => 'TEXT', 
							    'default_value' => undef, 
							    'extra' => {
								
							    }, 
							    'is_nullable' => 0, 
							    'size' => 65535 
						    } 
				    } 
						     }, 
						     'DBIx::Class::ResultSource::Table' ), 
				'Bnodes' => bless( {
				    'resultset_attributes' => {
					
				    }, 
				    'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
				    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				    'name' => 'Bnodes', 
				    'schema' => $VAR1->{
					'_source_handle'
				    }{
					'schema'
				    }, 
					    '_relationships' => {
						
					}, 
				    '_columns_info_loaded' => 0, 
				    'source_name' => 'Bnodes', 
    '_ordered_columns' => [ 'id', 
			    'name' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}{
	    'source_registrations'
	}{
	    'Bnodes'
	}{
	    '_primaries'
	} 
}, 
    '_columns' => {
	'name' => {
	    'data_type' => 'TEXT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 65535 
	}, 
		'id' => {
		    'data_type' => 'BIGINT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 20 
	    } 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'Statements17546201007601059027', 
    'schema' => $VAR1->{	'_source_handle'}{    'schema'}, 
    '_relationships' => {
	'object_resources' => {	    'cond' => {		'foreign.id' => 'self.object' 	    }, 
				    'source' => 'RedLandMySql::Schema::Result::Resources', 
				    'attrs' => {
					'cascade_update' => 1, 
					'join_type' => 'LEFT', 
					'cascade_delete' => 1, 
					'accessor' => 'single' 
				    }
				    , 
				    'class' => 'RedLandMySql::Schema::Result::Resources' 
	}
	, 
	
	'statement_object_res' => {
	    'cond' => {
		'foreign.id' => 'self.object' 
	    }, 
		    'source' => 'RedLandMySql::Schema::Result::Resources', 
		    'attrs' => {
					    'join_type' => 'LEFT' 
		}, 
						'class' => 'RedLandMySql::Schema::Result::Resources' 
	}
	, 
	'statment_literal' => {
	    'cond' => {
		'foreign.id' => 'self.object' 
	    }, 
		    'source' => 'RedLandMySql::Schema::Result::Resources', 
		    'attrs' => {
								
		}, 
	    'class' => 'RedLandMySql::Schema::Result::Resources' 
	}
	, 
	'statement_subject_res' => {
	    'cond' => {		'foreign.id' => 'self.subject'     }, 
	    'source' => 'RedLandMySql::Schema::Result::Resources', 
	    'attrs' => {'join_type' => 'LEFT' 	    }, 
	    'class' => 'RedLandMySql::Schema::Result::Resources' 
	}
	, 
	'statement_predicate_res' => {
	    'cond' => {
		'foreign.id' => 'self.predicate' 
	    }, 
		    'source' => 'RedLandMySql::Schema::Result::Resources', 
		    'attrs' => 
		{
		    'join_type' => 'LEFT' 
		}
	    , 
	    'class' => 'RedLandMySql::Schema::Result::Resources' 
	} 
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
	    'data_type' => 'BIGINT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 20 
	}, 
		'predicate' => {
		    'data_type' => 'BIGINT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 20 
	    }, 
			'subject' => {
			    'data_type' => 'BIGINT', 
			    'default_value' => undef, 
			    'extra' => {
				
			    }, 
			    'is_nullable' => 0, 
			    'size' => 20 
		    }, 
				'context' => {
				    'data_type' => 'BIGINT', 
				    'default_value' => undef, 
				    'extra' => {
					
				    }, 
				    'is_nullable' => 0, 
				    'size' => 20 
			    } 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Models', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'Models', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Models', 
    '_ordered_columns' => [ 'id', 
			    'name' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}{
	    'source_registrations'
	}{
	    'Models'
	}{
	    '_primaries'
	} 
}, 
    '_columns' => {
	'name' => {
	    'data_type' => 'TEXT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 65535 
	}, 
		'id' => {
		    'data_type' => 'BIGINT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 20 
	    } 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'DistinctPredicate', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Distinctpredicate', 
    '_ordered_columns' => [ 'uri' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'uri' => {
	    'data_type' => 'TEXT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 65535 
	} 
} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Resources', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'Resources', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	'subject_statements' => {
	    'cond' => {
		'foreign.subject' => 'self.id' 
	    }, 
		    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
		    'attrs' => {
			'join_type' => 'LEFT', 
			'cascade_copy' => 1, 
			'cascade_delete' => 1, 
			'accessor' => 'multi' 
		}, 
			    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
	}, 
			    'object_statements' => {
				'cond' => {
				    'foreign.object' => 'self.id' 
				}, 
					'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
					'attrs' => {
					    'join_type' => 'LEFT', 
					    'cascade_copy' => 1, 
					    'cascade_delete' => 1, 
					    'accessor' => 'multi' 
				    }, 
						'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
			}, 
						'predicate_statements' => {
						    'cond' => {
							'foreign.predicate' => 'self.id' 
						    }, 
							    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
							    'attrs' => {
								'join_type' => 'LEFT', 
								'cascade_copy' => 1, 
								'cascade_delete' => 1, 
								'accessor' => 'multi' 
							}, 
								    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
					    } 
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}{
	    'source_registrations'
	}{
	    'Resources'
	}{
	    '_primaries'
	} 
}, 
    '_columns' => {
	'id' => {
	    'data_type' => 'BIGINT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 20 
	}, 
		'uri' => {
		    'data_type' => 'TEXT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 65535 
	    } 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'InterestingURI', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Interestinguri', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'id' => {
	    'data_type' => 'BIGINT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 20 
	}, 
		'uri' => {
		    'data_type' => 'TEXT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 65535 
	    } 
} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'NodesAndTypes', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Nodesandtypes', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
	    'data_type' => 'BIGINT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 20 
	}, 
		'predicate' => {
		    'data_type' => 'BIGINT', 
		    'default_value' => undef, 
		    'extra' => {
			
		    }, 
		    'is_nullable' => 0, 
		    'size' => 20 
	    }, 
			'subject' => {
			    'data_type' => 'BIGINT', 
			    'default_value' => undef, 
			    'extra' => {
				
			    }, 
			    'is_nullable' => 0, 
			    'size' => 20 
		    }, 
				'context' => {
				    'data_type' => 'BIGINT', 
				    'default_value' => undef, 
				    'extra' => {
					
				    }, 
				    'is_nullable' => 0, 
				    'size' => 20 
			    } 
} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
    'resultset_attributes' => {
	
}, 
    'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
    'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
    'name' => 'DataTypePredicates', 
    'schema' => $VAR1->{
	'_source_handle'
}{
    'schema'
}, 
    '_relationships' => {
	
}, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Datatypepredicates', 
    '_ordered_columns' => [ 'uri' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'uri' => {
	    'data_type' => 'TEXT', 
	    'default_value' => undef, 
	    'extra' => {
		
	    }, 
	    'is_nullable' => 0, 
	    'size' => 65535 
	} 
} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
			}, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
    'root', 
    'yavVugIxJon0' ], 
    '_connect_info' => [ 'dbi:mysql:introspector', 
    'root', 
    'yavVugIxJon0' ], 
    'savepoints' => [], 
    '_sql_maker_opts' => {
    
}, 
    'schema' => $VAR1->{
    '_source_handle'
}{
    'schema'
}, 
    '_conn_pid' => 10329, 
    'debugobj' => bless( {
	'debugfh' => bless( \*Symbol::GEN2, 
			    'IO::File' ) 
}, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
}, 
    'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
	'sqlfalse' => '0=1', 
	'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
	'_cached_syntax' => 'LimitXY', 
	'special_ops' => [ {
	    'handler' => '_where_field_BETWEEN', 
	    'regex' => qr/(?i-xsm:^(not )?between$)/ 
			   }, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
}, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
				   }, 
    'RedLandMySql::Schema' ) 
				       }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '15015140325254999524', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#type_decl' 
} 
	}, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
			       }, 
    'RedLandMySql::Schema' ) 
				   }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '2660619012245458557', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#id-1109' 
} 
									    }, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = undef; Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
			       }, 
    'RedLandMySql::Schema' ) 
				   }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '17289315432203363633', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#filename-types' 
} 
													    }, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
			       }, 
    'RedLandMySql::Schema' ) 
				   }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '5497027998921803755', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#id-1108' 
} 
									    }, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
			       }, 
    'RedLandMySql::Schema' ) 
				   }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '15015140325254999524', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#type_decl' 
} 
									    }, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 
    '_dbh_autocommit' => 1, 
    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} ], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			}, 
    'DBIx::Class::Storage::DBI::mysql' ) 
			       }, 
    'RedLandMySql::Schema' ) 
				   }, 
    'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1, 
    '_column_data' => {
	'id' => '15015140325254999524', 
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#type_decl' 
} 
									    }, 
    'RedLandMySql::Model::DB::Resources' ); Statement.Object $VAR1 = bless( {
	'_source_handle' => bless( {
	    'source_moniker' => 'Resources', 
	    'schema' => bless( {
		'class_mappings' => {
		    'RedLandMySql::Model::DB::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Resources' => 'Resources', 
		    'RedLandMySql::Schema::Result::Literals' => 'Literals', 
		    'RedLandMySql::Model::DB::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Model::DB::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Statements17546201007601059027' => 'Statements17546201007601059027', 
		    'RedLandMySql::Schema::Result::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Schema::Result::Interestinguri' => 'Interestinguri', 
		    'RedLandMySql::Model::DB::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Bnodes' => 'Bnodes', 
		    'RedLandMySql::Schema::Result::Nodesandtypes' => 'Nodesandtypes', 
		    'RedLandMySql::Schema::Result::Models' => 'Models', 
		    'RedLandMySql::Model::DB::Datatypepredicates' => 'Datatypepredicates', 
		    'RedLandMySql::Model::DB::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Model::DB::Literals' => 'Literals', 
		    'RedLandMySql::Schema::Result::Distinctpredicate' => 'Distinctpredicate', 
		    'RedLandMySql::Schema::Result::Statements17546201007601059027' => 'Statements17546201007601059027' 
		}, 
			'source_registrations' => {
			    'Literals' => bless( {
				'resultset_attributes' => {
				    
				}, 
				'result_class' => 'RedLandMySql::Model::DB::Literals', 
				'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
				'name' => 'Literals', 
				'schema' => $VAR1->{
				    '_source_handle'
				}{
				    'schema'
				}, 
					'_relationships' => {
					    
				    }, 
				'_columns_info_loaded' => 0, 
				'source_name' => 'Literals', 
				'_ordered_columns' => [ 'id', 
							'value', 
							'language', 
							'datatype' ], 
				'_primaries' => [ 'id' ], 
				'resultset_class' => 'DBIx::Class::ResultSet', 
				'_unique_constraints' => {
				    'primary' => $VAR1->{
    '_source_handle'
				    }{
    'schema'
}{
    'source_registrations'
}{
    'Literals'
}{
    '_primaries'
} 
				}, 
    '_columns' => {
	'language' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'value' => {
    'data_type' => 'LONGTEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 4294967295 
}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'datatype' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
						 }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Bnodes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Bnodes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Bnodes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Bnodes', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Bnodes'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Statements17546201007601059027' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Statements17546201007601059027', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Statements17546201007601059027', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'object_resources' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'cascade_update' => 1, 
	'join_type' => 'LEFT', 
	'cascade_delete' => 1, 
	'accessor' => 'single' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
		    }, 
    'statement_object_res' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statment_literal' => {
    'cond' => {
	'foreign.id' => 'self.object' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_subject_res' => {
    'cond' => {
	'foreign.id' => 'self.subject' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
}, 
    'statement_predicate_res' => {
    'cond' => {
	'foreign.id' => 'self.predicate' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Resources', 
    'attrs' => {
	'join_type' => 'LEFT' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Resources' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Statements17546201007601059027', 
    '_ordered_columns' => [ 'subject', 
			    'predicate', 
			    'object', 
			    'context' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_columns' => {
	'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
					       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Models' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Models', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Models', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Models', 
	'_ordered_columns' => [ 'id', 
				'name' ], 
	'_primaries' => [ 'id' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_unique_constraints' => {
	    'primary' => $VAR1->{
    '_source_handle'
	    }{
    'schema'
}{
    'source_registrations'
}{
    'Models'
}{
    '_primaries'
} 
	}, 
    '_columns' => {
	'name' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	}, 
    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
} 
		       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Distinctpredicate' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Distinctpredicate', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DistinctPredicate', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Distinctpredicate', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Resources' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Resources', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'Resources', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    'subject_statements' => {
    'cond' => {
	'foreign.subject' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
		    }, 
    'object_statements' => {
    'cond' => {
	'foreign.object' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
}, 
    'predicate_statements' => {
    'cond' => {
	'foreign.predicate' => 'self.id' 
}, 
    'source' => 'RedLandMySql::Schema::Result::Statements17546201007601059027', 
    'attrs' => {
	'join_type' => 'LEFT', 
	'cascade_copy' => 1, 
	'cascade_delete' => 1, 
	'accessor' => 'multi' 
}, 
    'class' => 'RedLandMySql::Schema::Result::Statements17546201007601059027' 
} 
	    }, 
    '_columns_info_loaded' => 0, 
    'source_name' => 'Resources', 
    '_ordered_columns' => [ 'id', 
			    'uri' ], 
    '_primaries' => [ 'id' ], 
    'resultset_class' => 'DBIx::Class::ResultSet', 
    '_unique_constraints' => {
	'primary' => $VAR1->{
    '_source_handle'
	}{
    'schema'
}{
    'source_registrations'
}{
    'Resources'
}{
    '_primaries'
} 
}, 
    '_columns' => {
	'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	}, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
} 
			  }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Interestinguri' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Interestinguri', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'InterestingURI', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Interestinguri', 
	'_ordered_columns' => [ 'id', 
				'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'id' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
} 
	} 
			       }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Nodesandtypes' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Nodesandtypes', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'NodesAndTypes', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Nodesandtypes', 
	'_ordered_columns' => [ 'subject', 
				'predicate', 
				'object', 
				'context' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'object' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
	    }, 
    'predicate' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'subject' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
}, 
    'context' => {
    'data_type' => 'BIGINT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 20 
} 
	} 
			      }, 
    'DBIx::Class::ResultSource::Table' ), 
    'Datatypepredicates' => bless( {
	'resultset_attributes' => {
	    
	}, 
	'result_class' => 'RedLandMySql::Model::DB::Datatypepredicates', 
	'sqlt_deploy_callback' => 'default_sqlt_deploy_hook', 
	'name' => 'DataTypePredicates', 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_relationships' => {
		    
	    }, 
	'_columns_info_loaded' => 0, 
	'source_name' => 'Datatypepredicates', 
	'_ordered_columns' => [ 'uri' ], 
	'resultset_class' => 'DBIx::Class::ResultSet', 
	'_columns' => {
	    'uri' => {
    'data_type' => 'TEXT', 
    'default_value' => undef, 
    'extra' => {
	
}, 
    'is_nullable' => 0, 
    'size' => 65535 
	    } 
	} 
				   }, 
    'DBIx::Class::ResultSource::Table' ) 
		    }, 
    'storage' => bless( {
	'_dbi_connect_info' => [ 'dbi:mysql:introspector', 
				 'root', 
				 'yavVugIxJon0' ], 
	'_connect_info' => [ 'dbi:mysql:introspector', 
			     'root', 
			     'yavVugIxJon0' ], 
	'savepoints' => [], 
	'_sql_maker_opts' => {
	    
	}, 
	'schema' => $VAR1->{
	    '_source_handle'
	}{
	    'schema'
	}, 
		'_conn_pid' => 10329, 
		'debugobj' => bless( {
		    'debugfh' => bless( \*Symbol::GEN2, 
    'IO::File' ) 
				     }, 
    'DBIx::Class::Storage::Statistics' ), 
    '_dbh_gen' => 0, 
    'transaction_depth' => 0, 
    '_in_dbh_do' => 0, 
    '_dbh' => bless( {
	
		     }, 
		     'DBI::db' ), 

    '_dbh_autocommit' => 1, 

    '_sql_maker' => bless( {
	'having_bind' => [], 
    'sqlfalse' => '0=1', 
    'equality_op' => qr/(?i-xsm:^(\=|is|(is\s+)?like)$)/, 
    '_cached_syntax' => 'LimitXY', 
    'special_ops' => [ {
	'handler' => '_where_field_BETWEEN', 
	'regex' => qr/(?i-xsm:^(not )?between$)/ 
}, 
{
    'handler' => '_where_field_IN', 
    'regex' => qr/(?i-xsm:^(not )?in$)/ 
} 
], 
    'sqltrue' => '1=1', 
    'limit_dialect' => 'LimitXY', 
    'order_bind' => [], 
    'cmp' => '=', 
    'inequality_op' => qr/(?i-xsm:^(!=|<>|(is\s+)?not(\s+like)?)$)/, 
    'from_bind' => [], 
    'bindtype' => 'columns', 
    'array_datatypes' => 1, 
    'logic' => 'OR' 
			   }, 
    'DBIx::Class::SQLAHacks::MySQL' ), 
    'debug' => 1 
			},     'DBIx::Class::Storage::DBI::mysql' ) 
    			       },     'RedLandMySql::Schema' ) 
				   },     'DBIx::Class::ResultSourceHandle' ), 
    '_in_storage' => 1,     
    '_column_data' => {
	'id' => '6704186558072925',        
	'uri' => 'http://introspector.sf.net/2003/08/16/introspector.owl#id-1107' 
} 
									    }, 

    'RedLandMySql::Model::DB::Resources' ); 
