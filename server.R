library(shiny)

shinyServer(
  function(input, output) {
    # Getting the Text Entered into the text field from the side panel with ID 'textInput'
    # and assign the value to an output variable 'textValue'
    output$textValue <- renderPrint({input$textInput})
    
    # Calculates the number of characters in the input text using function nchar and
    # assign the value to output variable noOfChars
    output$noOfChars <- renderPrint(nchar({input$textInput}, type="chars", allowNA=FALSE))
  }
  
  )