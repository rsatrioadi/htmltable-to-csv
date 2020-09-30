Reads HTML file(s) and writes tables found in the file(s) as CSV to standard output. HTML file(s) are assumed to contain only one table structure, i.e. only the first table's header is retained. Any subsequent tables found (within file and across files) are regarded as continuations of the first table; their headers are discarded.

TODO: require 'csv' instead of hand-typing double quotes and commas.
