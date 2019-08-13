package main

import (
	"fmt"
	"net/http"
	"os"
	
        "github.com/gorilla/mux"
)

const (
	port            = "8080"
	cookieMaxAge    = 60 * 60 * 48
)

type conferenceWebsiteServer struct {
	confDetailsSvcAddr string

	scheduleSvcAddr string
}

func main() {
	srvPort := port
	if os.Getenv("PORT") != "" {
		srvPort = os.Getenv("PORT")
	}
	addr := os.Getenv("LISTEN_ADDR")
	svc := new(conferenceWebsiteServer)

	r := mux.NewRouter()
	r.HandleFunc("/", svc.homeHandler).Methods(http.MethodGet, http.MethodHead)
	r.HandleFunc("/health-check", func(w http.ResponseWriter, _ *http.Request) { fmt.Fprint(w, "ok") })

	var handler http.Handler = r
        
        http.ListenAndServe(addr+":"+srvPort, handler)
}


