#!/usr/bin/env python3
"""
Booksy Desktop Launcher
This file checks dependencies and launches the application
"""

import sys
import subprocess
import importlib.util

def check_and_install_dependencies():
    """Check if required packages are installed, install if missing"""
    required_packages = {
        'docx': 'python-docx'
    }
    
    missing_packages = []
    
    for package, pip_name in required_packages.items():
        if importlib.util.find_spec(package) is None:
            missing_packages.append(pip_name)
    
    if missing_packages:
        print("Installing missing dependencies...")
        for package in missing_packages:
            try:
                subprocess.check_call([sys.executable, '-m', 'pip', 'install', package])
                print(f"✓ {package} installed successfully")
            except subprocess.CalledProcessError:
                print(f"✗ Failed to install {package}")
                print("Please run: pip install python-docx")
                return False
    
    return True

def main():
    print("🚀 Starting Booksy Desktop...")
    
    # Check dependencies
    if not check_and_install_dependencies():
        input("Press Enter to exit...")
        return
    
    # Import and run the main application
    try:
        from main import BooksyDesktop
        app = BooksyDesktop()
        app.run()
    except ImportError as e:
        print(f"Error importing application: {e}")
        input("Press Enter to exit...")
    except Exception as e:
        print(f"Error running application: {e}")
        input("Press Enter to exit...")

if __name__ == "__main__":
    main()