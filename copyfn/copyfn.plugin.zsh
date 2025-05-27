copyfn() {
    if [ -z "$1" ]; then
        echo "Usage: copyfn <filename>"
        return 1
    fi

    filename=$(basename "$1")

    if command -v xclip >/dev/null 2>&1; then
        echo -n "$filename" | xclip -selection clipboard
    elif command -v pbcopy >/dev/null 2>&1; then
        echo -n "$filename" | pbcopy
    else
        echo "Error: No clipboard utility found (xclip or pbcopy)."
        return 1
    fi

    echo "Copied filename: $filename"
}
