package main

import (
	"encoding/json"
	"fmt"
	"log"
	"regexp"
	"time"
)

// User represents a simple user with a name and email
type User struct {
	Name      string    `json:"name"`
	Email     string    `json:"email"`
	CreatedAt time.Time `json:"created_at"`
}

// ToJSON returns the JSON representation of a User
func (u *User) ToJSON() (string, error) {
	data, err := json.Marshal(u)
	if err != nil {
		return "", err
	}
	return string(data), nil
}

// IsValidEmail checks if the email is valid using regex
func (u *User) IsValidEmail() bool {
	re := regexp.MustCompile(`^[^@\s]+@[^@\s]+\.[^@\s]+$`)
	return re.MatchString(u.Email)
}

// Custom error type
type AppError struct {
	Message string
}

func (e *AppError) Error() string {
	return e.Message
}

func main() {
	user := &User{
		Name:      "Alice",
		Email:     "alice@example.com",
		CreatedAt: time.Now(),
	}

	// "binding.pry" analog – debug log
	log.Println("User loaded:", user)

	// Ternary-style logic (no native ternary, use if-else)
	var status string
	if user.IsValidEmail() {
		status = "✓ Email is valid"
	} else {
		status = "✗ Invalid email"
	}
	fmt.Println(status)

	// Try-catch-like behavior via panic/recover
	defer func() {
		if r := recover(); r != nil {
			log.Printf("Recovered from error: %v\n", r)
		}
	}()

	if !user.IsValidEmail() {
		panic(&AppError{Message: fmt.Sprintf("Invalid email: %q", user.Email)})
	}

	jsonStr, err := user.ToJSON()
	if err != nil {
		log.Fatalf("Failed to serialize user: %v", err)
	}
	fmt.Println("User JSON:", jsonStr)

	// Switch example
	switch user.Name {
	case "Alice":
		fmt.Println("Hello, Alice!")
	case "Bob":
		fmt.Println("Hey Bob.")
	default:
		fmt.Println("Unknown user")
	}
}
