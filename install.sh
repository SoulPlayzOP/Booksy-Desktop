#!/bin/bash

echo "========================================"
echo "   Booksy Desktop Installer"
echo "   Write. Create. Publish."
echo "========================================"
echo

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    if ! command -v python &> /dev/null; then
        echo "ERROR: Python is not installed"
        echo "Please install Python from https://python.org"
        exit 1
    else
        PYTHON_CMD="python"
    fi
else
    PYTHON_CMD="python3"
fi

echo "[1/4] Python found - OK"
echo

# Install dependencies
echo "[2/4] Installing dependencies..."
$PYTHON_CMD -m pip install python-docx
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install dependencies"
    exit 1
fi

echo "[3/4] Dependencies installed - OK"
echo

# Create desktop shortcut (Linux/Mac)
echo "[4/4] Creating desktop shortcut..."

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DESKTOP_DIR="$HOME/Desktop"

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    SHORTCUT="$DESKTOP_DIR/Booksy Desktop.command"
    cat > "$SHORTCUT" << EOF
#!/bin/bash
cd "$SCRIPT_DIR"
$PYTHON_CMD main.py
EOF
    chmod +x "$SHORTCUT"
else
    # Linux
    SHORTCUT="$DESKTOP_DIR/Booksy Desktop.desktop"
    cat > "$SHORTCUT" << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Booksy Desktop
Comment=Professional Book Creator
Exec=$PYTHON_CMD "$SCRIPT_DIR/main.py"
Icon=applications-office
Path=$SCRIPT_DIR
Terminal=false
Categories=Office;WordProcessor;
EOF
    chmod +x "$SHORTCUT"
fi

echo "Desktop shortcut created - OK"
echo

echo "========================================"
echo "   Installation Complete!"
echo "========================================"
echo
echo "Booksy Desktop has been installed successfully!"
echo
echo "You can now:"
echo "  1. Double-click 'Booksy Desktop' on your desktop"
echo "  2. Or run: $PYTHON_CMD main.py"
echo
echo "Happy writing!"
echo "========================================"