#!/bin/bash

mkdir -p build

echo "Building Instructor Deck"
cp book.instructor-slides.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc -f epub -t docx -o book.docx book.epub
mv website build/instructor-slides
mv book.pdf build/instructor-slides.pdf
mv book.epub build/instructor-slides.epub
mv book.docx build/instructor-slides.docx

echo "Building Instructor Book"
cp book.instructor.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc -f epub -t docx -o book.docx book.epub
mv website build/instructor
mv book.pdf build/instructor.pdf
mv book.epub build/instructor.epub
mv book.docx build/instructor.docx

echo "Building Student Slides"
cp book.student-slides.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc -f epub -t docx -o book.docx book.epub
mv website build/student-slides
mv book.pdf build/student-slides.pdf
mv book.epub build/student-slides.epub
mv book.docx build/student-slides.docx

echo "Building Student Book"
cp book.student.json book.json
gitbook build . website
gitbook pdf .
gitbook epub .
pandoc -f epub -t docx -o book.docx book.epub
mv website build/student
mv book.pdf build/student.pdf
mv book.epub build/student.epub
mv book.docx build/student.docx

echo "Finishing up"
cp book.master.json book.json