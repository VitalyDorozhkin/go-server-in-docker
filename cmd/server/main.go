package main

import (
	"fmt"
	"github.com/buaazp/fasthttprouter"
	"github.com/valyala/fasthttp"
	"math/rand"
	"time"
)

func main() {
	router := fasthttprouter.New()
	r1 := rand.New(rand.NewSource(time.Now().UnixNano()))
	router.Handle("GET", "/", func(ctx *fasthttp.RequestCtx) {
		fmt.Fprint(ctx.Response.BodyWriter(), string('a'+r1.Intn(26)))
	})
	fasthttp.ListenAndServe(":8081", router.Handler)
}
