;; Simulate loading a bunch of libraries
(println "Simulating doing some initializatiaon")
(Thread/sleep 10000)

(defn foo []
  (println "Thanks for calling foo."))

(println "Done with simulation");
