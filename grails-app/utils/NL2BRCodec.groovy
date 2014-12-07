class NL2BRCodec {
    static encode = { string ->
        string.trim().replaceAll("\n", "<br>")
    }
}
