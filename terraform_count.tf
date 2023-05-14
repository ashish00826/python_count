resource "null_resource" "python_file_writer" {
	provisioner "local-exec" {
	command = "python3 ${path.module}/write_numbers.py"
  }
}

write_numbers.py

file_path = "numbers.txt"

with open(file_path, "w") as file:
    for number in range(1, 101):
        file.write(str(number) + "\n")
