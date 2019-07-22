package main

import (
	"html/template"
	"net/http"
        "io/ioutil"
        "fmt"
        "os"
)

var (
	templates = template.Must(template.New("").
		ParseGlob("templates/*.html"))
)

func (cw *conferenceWebsiteServer) homeHandler(w http.ResponseWriter, r *http.Request) {
    var confDetailsSvcAddr, scheduleSvcAddr, confDetails, schedule string

    mustMapEnv(&confDetailsSvcAddr, "CONFERENCE_DETAILS_SERVICE_ADDR")
    mustMapEnv(&scheduleSvcAddr, "SCHEDULE_SERVICE_ADDR")
  
    getRestData(&confDetails, "http://" + confDetailsSvcAddr + "/conference-details")
    getRestData(&schedule, "http://" + scheduleSvcAddr + "/schedule")
    
    templates.ExecuteTemplate(w, "home", map[string]interface{}{
	"conference_name":   confDetails, 
	"schedule":   schedule, 
    });
}

func mustMapEnv(target *string, envKey string) {
    v := os.Getenv(envKey)
    if v == "" {
        panic(fmt.Sprintf("environment variable %q not set", envKey))
    }
    *target = v
}

func getRestData(returnData *string, endPoint string) {
    response, err := http.Get(endPoint)
    if err != nil {
        *returnData = "The HTTP request failed with error err"
    } else {
        data, _ := ioutil.ReadAll(response.Body)
        *returnData = string(data); 
    }
}
