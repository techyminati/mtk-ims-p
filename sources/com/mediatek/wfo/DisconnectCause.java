package com.mediatek.wfo;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class DisconnectCause implements Parcelable {
    public static final Parcelable.Creator<DisconnectCause> CREATOR = new Parcelable.Creator<DisconnectCause>() { // from class: com.mediatek.wfo.DisconnectCause.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisconnectCause createFromParcel(Parcel source) {
            int error = source.readInt();
            int subError = source.readInt();
            return new DisconnectCause(error, subError);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DisconnectCause[] newArray(int size) {
            return new DisconnectCause[size];
        }
    };
    private int errorCause;
    private int subErrorCause;

    public DisconnectCause(int error, int subError) {
        this.errorCause = error;
        this.subErrorCause = subError;
    }

    public int getErrorCause() {
        return this.errorCause;
    }

    public int getSubErrorCause() {
        return this.subErrorCause;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.errorCause);
        dest.writeInt(this.subErrorCause);
    }

    public String toString() {
        return "DisconnectCause {errorCause=" + this.errorCause + ", subErrorCause=" + this.subErrorCause + "}";
    }
}
