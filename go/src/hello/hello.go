package hello

import "fmt"
import "github.com/satori/go.uuid"

func Greetings(name string) string {
	uuid := uuid.NewV4()
	return fmt.Sprintf("[%s] Hello, %s!", uuid.String(), name)
}
