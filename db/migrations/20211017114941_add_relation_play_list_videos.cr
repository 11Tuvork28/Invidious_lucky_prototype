class AddRelationPlayListVideos::V20211017114941 < Avram::Migrator::Migration::V1
  def migrate
    # Read more on migrations
    # https://www.luckyframework.org/guides/database/migrations
    #
    # create table_for(Thing) do
    #   primary_key id : Int64
    #   add_timestamps
    #
    #   add title : String
    #   add description : String?
    # end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
    alter table_for(PlayListVideos) do
      add_belongs_to pl : PlayLists, on_delete: :cascade, foreign_key_type: UUID
    end
  end

  def rollback
    # drop table_for(Thing)
  end
end
