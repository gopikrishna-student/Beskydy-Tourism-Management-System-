# Adepu Gopikrishna
# Beskydy Tourism Management System
# Janet CLI Application

(defn main [&]
  (let [max-options 5]

    (var running true)

    (while running
      (print "\n=================================")
      (print "   BESKYDY TOURISM MANAGEMENT")
      (print "=================================")
      (print "1 - View Attractions")
      (print "2 - Find Accommodation")
      (print "3 - Discover Activities")
      (print "4 - Contact Information Center")
      (print "5 - Exit")

      (prin (string "Select option (1-" max-options ") > "))

      (let [input (string/trim (file/read stdin :line))
            choice (scan-number input)]

        (cond

          (nil? choice)
          (print "Invalid input! Please enter a number between 1-5.")

          (= choice 1)
          (do
            (print "\nTop Attractions:")
            (print "• Lysá Hora (Highest Peak)")
            (print "• Pustevny (Wallachian Architecture)")
            (print "• Radhošť Mountain")
            (print "• Smrk Lookout Tower"))

          (= choice 2)
          (do
            (print "\nAccommodation Options:")
            (print "• Hotel Beskyd - $90/night")
            (print "• Pension Radhošť - $60/night")
            (print "• Mountain Cottage - $75/night")
            (print "• Ostravice Apartments - $70/night"))

          (= choice 3)
          (do
            (print "\nAvailable Activities:")
            (print "Summer: Hiking, Cycling, Water Activities")
            (print "Winter: Skiing, Snowboarding")
            (print "Cultural: Festivals & Local Events"))

          (= choice 4)
          (do
            (print "\nEnter your message for Tourism Office:")
            (let [message (file/read stdin :line)]
              (print "Thank you! Your message has been recorded:")
              (print message)))

          (= choice 5)
          (do
            (print "\nThank you for visiting Beskydy!")
            (set running false))

          (do
            (print "Invalid option! Please select between 1-5."))))))))

(main)
