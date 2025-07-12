#!/bin/zsh

# Test script for theme switching

echo "Testing macOS theme detection..."

# Function to detect macOS appearance
detect_macos_theme() {
  if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "dark"
    return
  fi
  local appearance=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
  if [[ "$appearance" == "Dark" ]]; then
    echo "dark"
  else
    echo "light"
  fi
}

current_theme=$(detect_macos_theme)
echo "Current theme: $current_theme"

echo ""
echo "To test theme switching:"
echo "1. Toggle macOS appearance (System Settings > Appearance)"
echo "2. Press Enter in your terminal to trigger a new prompt"
echo "3. The prompt colors should update automatically"
echo ""
echo "Dark mode uses color: #3C3C49 (RGB: 60,60,73)"
echo "Light mode uses color: #C9CBCC (RGB: 201,203,204)"