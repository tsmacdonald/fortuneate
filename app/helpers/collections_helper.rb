module CollectionsHelper
  def publication_year_column(record, column)
    record.publication_year.to_s
  end
end
