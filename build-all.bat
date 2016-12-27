mkdir -p build

echo "Building Instructor Deck"
copy book.instructor-slides.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc /f epub /t docx /o book.docx book.epub
move website build\instructor-slides
move book.pdf build\instructor-slides.pdf
move book.epub build\instructor-slides.epub
move book.docx build\instructor-slides.docx

echo "Building Instructor Book"
copy book.instructor.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc /f epub /t docx /o book.docx book.epub
move website build\instructor
move book.pdf build\instructor.pdf
move book.epub build\instructor.epub
move book.docx build\instructor.docx

echo "Building Student Slides"
copy book.student-slides.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc /f epub /t docx /o book.docx book.epub
move website build\student-slides
move book.pdf build\student-slides.pdf
move book.epub build\student-slides.epub
move book.docx build\student-slides.docx

echo "Building Student Book"
copy book.student.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc /f epub /t docx /o book.docx book.epub
move website build\student
move book.pdf build\student.pdf
move book.epub build\student.epub
move book.docx build\student.docx

echo "Finishing up"
copy book.master.json book.json