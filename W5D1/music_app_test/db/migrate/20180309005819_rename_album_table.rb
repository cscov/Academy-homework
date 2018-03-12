class RenameAlbumTable < ActiveRecord::Migration[5.1]
  def change
    rename_table('albums_tables', 'albums')
  end
end
