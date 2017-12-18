# Alexis Carlier Gearset assessment

## PDF text formatter

This is my attempt at the PDF text formatter. The commands that I have are:

".paragraph"
".bold"
".italic"
".regular"
".large"
".normal"

The run.rb file is what I've used as a feature test. If you want to try out the commands and render a pdf, edit the text variable in that file and the run the run.rb file on the command line.

I don't have the other commands because I ran out of time (4 hours limit).

That said, my approach to the problem makes it pretty easy to add on additional functionality, so I think that I'd be able to do it easily with a bit more time. In my PdfRenderer class, simply add the method you'd like to add to the apply formatting method, then create the method. I used the Prawn pdf generator for Ruby which makes this easy to do; simply use the methods built into Prawn.

## Notes on approach

I began test driving the creation of my text arranger class, which was helpful when writing and refactoring the methods in that class. However, I didn't test drive the pdf renderer. There are a couple of reasons for this. Firstly, Gearset doesn't prioritise test driving and it was taking me a while to work out how to double the pdf. Secondly, the run.rb provided a pretty easy way of checking if what I was doing was working.

## Notes on architecture

My program is divided into two clases, TextArranger and PdfRenderer. The responsibility of TextArranger is to rearrange the text into a form the the PdfRenderer can handle.

## Things to improve

- Add the missing functionality
- My PdfRenderer class has too much going on. With more time, I'd probably extract lots of the formatting into a seperate formatting class and leave the PdfRenderer to simply render the PDF
- My program is not user friendly. At this point, this only way to use it is by interacting directly with my classes as in the run.rb file. This can obviously be improved, by making it a command line app for instance
- I should add tests to the PdfRenderer class to make sure it always behaves how I expect, making sure to test edge cases
- The get_string_indexes and get_arranged_text methods are not great. They're too long and there's definitely a more efficient and readable way of achieving what they do. I'd change these with more time
- I could encapsulate better by defining which method should be private
