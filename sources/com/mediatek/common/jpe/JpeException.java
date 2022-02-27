package com.mediatek.common.jpe;
/* loaded from: classes.dex */
public class JpeException extends SecurityException {
    private String errorMessage;

    public JpeException(String message) {
        super(message, null);
        this.errorMessage = null;
        this.errorMessage = message;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuffer value = new StringBuffer();
        if (this.errorMessage != null) {
            value.append("error - ");
            value.append(this.errorMessage);
            value.append("\n");
        } else {
            value.append(super.getMessage());
        }
        return value.toString();
    }
}
