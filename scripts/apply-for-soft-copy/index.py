from docx import Document
import glob

text_files = glob.glob("x/**/*.tsx")

doc = Document()
max_lines = 3500
line_count = 0

# print(text_files)
for file in text_files:
    print(file)
    with open(file, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line:
                continue

            line_count += 1
            print("{}: {}".format(line_count, line))
            doc.add_paragraph(line)
            if line_count >= max_lines:
                break

    if line_count >= max_lines:
        break


doc.save("./doc.docx")
