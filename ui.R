shinyUI(pageWithSidebar(
  headerPanel("Calculating # Of Characters In A Given String"),
  
  # Side Panel for Inputs from a Text Field with ID 'textInput', and a Submit Button
  sidebarPanel(
    textInput("textInput", "Please Enter Text Below:", value = ""),
    submitButton('Submit')
  ),
  
  # Main Panel That Displays the Entered Text and Total Number of 
  # Characters in the Input Text
  mainPanel(
    h3("You Entered:"),
    verbatimTextOutput("textValue"),
    h3("Total Number of Characters:"),
    verbatimTextOutput("noOfChars")
  )

  )
  )