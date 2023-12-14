-- This SQL script creates a index named 'idx_name_first' on the 'name' column of the 'names' table. The index will be created on the first character of the name column.

CREATE INDEX idx_name_first ON names(name(1));
