require 'fileutils'
# for when a folder has too many files in it
# moves files on a windows system to sub-folders
# update list, below, to your path and file extension of the files to be moved- to move all files, just leave off the *.mp3 part
list = Dir["E:/chris/LostFiles/*.mp3"]
print list
pathname = 1
# I was moving 210,000 files into folders of 5000 each, this step makes the folders, update the path so to where you want the folders to be created
42.times do
	path = "E:/chris/LostFiles/#{pathname.to_s}"
	unless File.directory?(path)
		FileUtils.mkdir_p(path)
	end
	pathname += 1
end
dirname = 1
# this step moves the files, you will need to update the path name here.
42.times do
	5000.times do
		location = list.pop
		destination = "E:/chris/LostFiles/" + dirname.to_s
		unless location == nil
			FileUtils.mv location, destination
		end
	end
	dirname += 1
end
