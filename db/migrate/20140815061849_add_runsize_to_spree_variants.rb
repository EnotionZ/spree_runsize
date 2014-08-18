class AddRunsizeToSpreeVariants < ActiveRecord::Migration
  def change
  	  add_column :spree_variants, :runsize, :string
  end
end
