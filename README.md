# Booksy Desktop - Write. Create. Publish.

A standalone desktop application for creating professional books with ease. Built with Python and Tkinter, Booksy Desktop provides a clean, distraction-free writing environment for authors.

## ✨ Features

- 📚 **6 Book Formats**: Novel, Poetry Collection, Memoir, Cookbook, Children's Book, Technical/Business
- ✍️ **Rich Text Editor**: Clean writing interface with Georgia font for comfortable reading
- 📄 **DOCX Export**: Professional Microsoft Word format export with proper formatting
- 💾 **Manual Save**: Save your work with the dedicated Save button
- 📊 **Real-time Word Count**: Live word count tracking as you type
- 📖 **Section-based Writing**: Organize content into chapters and sections
- ➕ **Dynamic Chapter Addition**: Add new chapters on-the-fly for novels, memoirs, and technical books
- 🔒 **Local Storage**: All data stored in your home directory - complete privacy
- 📋 **Book Dashboard**: Manage multiple books with creation date and word count stats
- 🗑️ **Book Management**: Edit, export, or delete books from the dashboard

## 🚀 Quick Start

### Prerequisites

- **Python 3.7+** ([Download Python](https://www.python.org/downloads/))
- **Windows, macOS, or Linux** (cross-platform support)

### Installation Options

#### Option 1: Automatic Installation (Windows)

1. **Download and extract** the project files
2. **Double-click** `install.bat`
3. **Follow the prompts** - it will:
   - Check Python installation
   - Install dependencies automatically
   - Create a desktop shortcut
4. **Launch** by double-clicking "Booksy Desktop" on your desktop

#### Option 2: Manual Installation

1. **Download and extract the project**
   ```cmd
   # Navigate to where you extracted the files
   cd "path/to/Booksy-Desktop"
   ```

2. **Install dependencies**
   ```cmd
   pip install python-docx
   ```
   
   Or use the requirements file:
   ```cmd
   pip install -r requirements.txt
   ```

3. **Launch Booksy**
   ```cmd
   python main.py
   ```

#### Option 3: Smart Launcher

```cmd
python run.py
```
This automatically checks and installs missing dependencies before launching.

## 📋 System Requirements

- **Operating System**: Windows, macOS, or Linux
- **Python**: Version 3.7 or higher
- **Memory**: 256MB RAM minimum
- **Storage**: 10MB free space
- **Dependencies**:
  - `tkinter` (included with Python)
  - `python-docx==0.8.11` (for DOCX export)

## 📖 How to Use Booksy Desktop

### Getting Started

1. **Launch the Application**
   - Double-click "Booksy Desktop" shortcut (if installed via install.bat)
   - Or run `python main.py` from the project folder

2. **Create Your First Book**
   - Click "Create First Book" or "+ New Book"
   - Fill in the form:
     - **Book Title**: Your book's title
     - **Author**: Your name
     - **Format**: Choose from dropdown (Novel, Poetry Collection, Memoir, Cookbook, Children's Book, Technical/Business)
   - Click "Create Book"

### Writing Your Book

1. **Navigate Sections**
   - Use the **Book Structure** sidebar on the left
   - Default sections include: Title Page, Copyright, Chapter 1
   - Click any section to load it in the editor

2. **Writing Interface**
   - Large text editor with Georgia font for comfortable reading
   - Real-time word count at the bottom
   - Manual save with the "💾 Save" button
   - Content is saved to the current section

3. **Managing Chapters**
   - **Add Chapter**: Click "+ Add Chapter" (available for Novel, Memoir, Technical/Business formats)
   - **Edit Content**: Click any section name to load and edit
   - **Auto-numbering**: New chapters are automatically numbered

### Dashboard Features

1. **Book Management**
   - View all your books with title, author, format
   - See creation date and total word count
   - Quick access to Edit, Export, or Delete

2. **Book Cards Show**:
   - 📚 Book title and author
   - Format type and last updated date
   - Total word count across all sections
   - Action buttons for management

### Exporting Your Work

1. **Export to DOCX**
   - Click "📄 Export" button in the editor
   - Or click "📄 Export DOCX" from the dashboard
   - Choose save location in the file dialog
   - File opens automatically after export

2. **Export Features**
   - Professional title page with book title and author
   - Centered title and author formatting
   - Each section becomes a separate chapter
   - Basic markdown support (# for headings)
   - Automatic page breaks between sections

## 📁 Data Storage & Privacy

- **Local Storage**: All books saved to `~/Booksy/books.json` (cross-platform)
  - Windows: `C:\Users\[Username]\Booksy\books.json`
  - macOS/Linux: `/home/[username]/Booksy/books.json`
- **JSON Format**: Human-readable data format for easy backup
- **No Internet Required**: Works completely offline
- **Privacy First**: Your data never leaves your computer
- **Backup Recommended**: Copy the entire `Booksy` folder to backup your work

## 📚 Book Formats Guide

| Format | Best For | Chapter Support | Default Sections |
|--------|----------|----------------|------------------|
| **Novel** | Fiction stories | ✅ Yes | Title Page, Copyright, Chapter 1 |
| **Poetry Collection** | Poems, verses | ❌ No | Title Page, Copyright, Chapter 1 |
| **Memoir** | Life stories | ✅ Yes | Title Page, Copyright, Chapter 1 |
| **Cookbook** | Recipe collections | ❌ No | Title Page, Copyright, Chapter 1 |
| **Children's Book** | Kids' stories | ❌ No | Title Page, Copyright, Chapter 1 |
| **Technical/Business** | Guides, manuals | ✅ Yes | Title Page, Copyright, Chapter 1 |

**Note**: All formats start with the same basic structure. Formats with chapter support allow you to add new chapters dynamically.

## 🔧 Troubleshooting

### Common Issues

**"Python not found" Error**
- Install Python from [python.org](https://www.python.org/downloads/)
- ✅ Check "Add Python to PATH" during installation
- Restart your command prompt after installation

**"No module named 'tkinter'" Error**
- **Windows**: Reinstall Python with "tcl/tk and IDLE" option checked
- **Linux**: `sudo apt-get install python3-tk`
- **macOS**: `brew install python-tk`
- Test with: `python -m tkinter` (should open a test window)

**"No module named 'docx'" Error**
- Install the dependency: `pip install python-docx`
- Or use the smart launcher: `python run.py`

**Application won't start**
- Check Python version: `python --version` (should be 3.7+)
- Verify tkinter: `python -c "import tkinter; print('OK')"`
- Try the smart launcher: `python run.py`

**Export not working**
- Ensure `python-docx` is installed: `pip install python-docx==0.8.11`
- Check write permissions in the save location
- Try saving to Desktop first

**"Save" button not working**
- Make sure you have a section selected from the sidebar
- Check that the `~/Booksy/` directory exists and is writable

### Getting Help

1. **Use Smart Launcher**: `python run.py` auto-fixes dependency issues
2. **Check Console**: Error messages appear in the terminal/command prompt
3. **Restart App**: Close and reopen if something seems stuck
4. **Backup Data**: Copy `~/Booksy/books.json` before troubleshooting
5. **Create Issue**: Report bugs on GitHub with your OS and Python version

## 🤝 Contributing

We welcome contributions! Here's how to help:

1. **Fork** the repository on GitHub
2. **Create** a feature branch: `git checkout -b feature-name`
3. **Make** your changes and test thoroughly
4. **Test** on multiple platforms if possible
5. **Commit** with clear messages: `git commit -m "Add feature description"`
6. **Push** to your fork: `git push origin feature-name`
7. **Submit** a pull request with detailed description

### Development Setup

```bash
git clone your-fork-url
cd Booksy-Desktop
pip install python-docx
python main.py
```

### Code Structure

- `main.py` - Main application with GUI and logic
- `run.py` - Smart launcher with dependency checking
- `install.bat` - Windows automatic installer
- `requirements.txt` - Python dependencies

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support & Community

- **Bug Reports**: [Create an issue](../../issues) with detailed steps to reproduce
- **Feature Requests**: [Open a discussion](../../discussions) to propose new features
- **Questions**: Check [existing issues](../../issues) or start a new discussion
- **Documentation**: Help improve these instructions via pull request

### Before Reporting Issues

1. **Try Smart Launcher**: Run `python run.py` first
2. **Check Requirements**: Python 3.7+ and python-docx installed
3. **Include Details**: OS, Python version, full error messages
4. **Steps to Reproduce**: Clear steps to recreate the problem

## 🚀 Potential Future Features

- [ ] **Auto-save**: Automatic content saving while typing
- [ ] **Dark Mode**: Theme options for comfortable writing
- [ ] **More Export Formats**: PDF, EPUB, HTML export options
- [ ] **Find & Replace**: Text search and replace functionality
- [ ] **Spell Check**: Built-in spell checking
- [ ] **Backup System**: Automatic local backups
- [ ] **Import**: Import from existing DOCX/TXT files
- [ ] **Templates**: Pre-made book templates for each format

---

**Booksy Desktop** - Making book creation accessible to everyone! 📖✨

*Happy Writing! 🖋️*