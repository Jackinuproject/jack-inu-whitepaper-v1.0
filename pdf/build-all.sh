#!/bin/bash

echo "Building Instructor Deck"
cp book.instructor-slides.json book.json
gitbook build . website
gitbook build . pdf

mv website instructor-slides

echo "Building Instructor Book"
cp book.instructor.json book.json
gitbook build . website
mv website instructor

echo "Building Student Slides"
cp book.student-slides.json book.json
gitbook build . website
mv website instructor

echo "Building Student Book"
cp book.student.json book.json
gitbook build . website
mv website instructor

