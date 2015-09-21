package hello

import "fmt"
import "github.com/satori/go.uuid"

type Processor interface {
	Process(s string) string
}

func Greetings(name string, processor Processor) string {
	uuid := uuid.NewV4()
	return fmt.Sprintf("%s Hello, %s!", processor.Process(uuid.String()), name)
}
