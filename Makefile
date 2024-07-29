BINARY_NAME=main
SOURCE_FILES=main.go
BIN_DIR=bin
PKG=pkg
BIN_PATH=$(PKG)/$(BIN_DIR)/$(BINARY_NAME)


all: build


build:
	@mkdir -p $(PKG)/$(BIN_DIR)  # Membuat direktori bin jika belum ada
	@go build -o $(BIN_PATH) $(SOURCE_FILES)


run: build
	@$(BIN_PATH)
