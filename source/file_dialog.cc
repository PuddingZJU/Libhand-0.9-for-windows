// Copyright (c) 2011, Marin Saric <marin.saric@gmail.com>
// All rights reserved.
//
// This file is a part of LibHand. LibHand is open-source software. You can
// redistribute it and/or modify it under the terms of the LibHand
// license. The LibHand license is the BSD license with an added clause that
// requires academic citation. You should have received a copy of the
// LibHand license (the license.txt file) along with LibHand. If not, see
// <http://www.libhand.org/>
//
// FileDialog

# include "file_dialog.h"
# include "file_tools.h"

# include <cstdarg>
# include <cstdlib>
# include <iostream>
# include <fstream>

# include <stdexcept>
# include <string>

namespace libhand {

	using namespace std;
	FileExtension::FileExtension(const char *desc, int num_ext, ...) {
		description = string(desc);
		va_list ap;

		va_start(ap, num_ext);
		for (int i = 0; i < num_ext; ++i) {
			char *ext = va_arg(ap, char *);
			patterns.push_back(string(ext));
		}
		va_end(ap);
	}

	FileDialog::FileDialog() :
		title_("Choose a file"),
		default_dir_("."),
		default_name_(""),
		default_ext_("") {

	}

	void FileDialog::AddExtension(const FileExtension &extension) {
		extensions_.push_back(extension);
	}


	string FileDialog::Open() {
		QString path = QFileDialog::getOpenFileName( NULL,title_, default_dir_,default_ext_); 
		if(path.length() == 0) { 
			QMessageBox::information(NULL, "Path", "You didn't select any files."); 
		} else { 
			//QMessageBox::information(NULL, "Path", "You selected " + path); 
		} 
		return path.toLocal8Bit();
	}

	string FileDialog::Save() {
		QString path = QFileDialog::getSaveFileName( NULL,title_, default_dir_, default_ext_); 
		if(path.length() == 0) { 
			QMessageBox::information(NULL, "Path", "You didn't select any files."); 
		} else { 
			//QMessageBox::information(NULL, "Path", "You selected " + path); 
		} 
		return path.toLocal8Bit();
	}

	void FileDialog::SetDefaultFile(const string &full_filepath) {
		SetDefaultDir(FileTools::Dirname(full_filepath));
		SetDefaultName(FileTools::Basename(full_filepath));
	}

}  // namespace libhand
