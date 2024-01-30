def ensure_bash_shebang(filename):
    if not filename.endswith(".sh"):
        filename += ".sh"

    try:
        with open(filename, 'r') as file:
            first_line = file.readline().strip()
            if not first_line.startswith("#!/bin/bash"):
                content = f"#!/bin/bash\n{file.read()}"
                with open(filename, 'w') as updated_file:
                    updated_file.write(content)
                print(f"Updated {filename} with #!/bin/bash")
            else:
                print(f"{filename} already has #!/bin/bash")
    except FileNotFoundError:
        content = "#!/bin/bash\n"
        with open(filename, 'w') as new_file:
            new_file.write(content)
        print(f"Created {filename} with #!/bin/bash")

if __name__ == "__main__":
    import sys
    for filename in sys.argv[1:]:
        ensure_bash_shebang(filename)

