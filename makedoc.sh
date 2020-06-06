base_dir="`pwd`/`dirname $0`"
head_file="$base_dir/head.md"
readme_file="$base_dir/README.md"
search_path="$base_dir"

cp $head_file $readme_file

uncommented_line=""
class_name=""

function get_class_name() {
	class_name=`echo "$1" | sed 's/@class\ //'`
}

function parse_comments() {
	while read -r l; do
		remove_comment_marker "$l"
		echo "$uncommented_line"
		if `echo "$uncommented_line" | grep -q "^@class "`; then
			get_class_name "$uncommented_line"
			echo "## $class_name" >> $readme_file
			echo "found class $class_name"
		fi
		# echo "$uncommented_line"
	done < "$1"
}

function remove_comment_marker() {
	uncommented_line=`printf "$1" | sed 's/^\/\*\*//g' | sed 's/^\*\ //' | sed 's/\*$//' | sed 's/\*\/$//'`
}

# look for all .hpp files in seach_path
hpp_file_list=`find $search_path -name "*.hpp"`
for hpp_file in ${hpp_file_list[@]}; do
	# keep only the files which contain documentation
	if grep -q '^/\*\*' "$hpp_file" && grep -q '^\ \*/$' "$hpp_file" ; then
		comment_begin=`grep -n '^/\*\*' "$hpp_file" | cut -f1 -d:`
		comment_end=`grep -n '^\ \*/$' "$hpp_file" | cut -f1 -d:`
		sed -n "${comment_begin},${comment_end}p;${comment_end}p" include/header-example2.hpp > comment_file.tmp
		parse_comments "comment_file.tmp"
	fi
done