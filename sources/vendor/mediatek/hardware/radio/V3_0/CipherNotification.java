package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class CipherNotification {
    public String simCipherStatus = new String();
    public String sessionStatus = new String();
    public String csStatus = new String();
    public String psStatus = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != CipherNotification.class) {
            return false;
        }
        CipherNotification other = (CipherNotification) otherObject;
        if (HidlSupport.deepEquals(this.simCipherStatus, other.simCipherStatus) && HidlSupport.deepEquals(this.sessionStatus, other.sessionStatus) && HidlSupport.deepEquals(this.csStatus, other.csStatus) && HidlSupport.deepEquals(this.psStatus, other.psStatus)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.simCipherStatus)), Integer.valueOf(HidlSupport.deepHashCode(this.sessionStatus)), Integer.valueOf(HidlSupport.deepHashCode(this.csStatus)), Integer.valueOf(HidlSupport.deepHashCode(this.psStatus)));
    }

    public final String toString() {
        return "{.simCipherStatus = " + this.simCipherStatus + ", .sessionStatus = " + this.sessionStatus + ", .csStatus = " + this.csStatus + ", .psStatus = " + this.psStatus + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(64L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<CipherNotification> readVectorFromParcel(HwParcel parcel) {
        ArrayList<CipherNotification> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 64, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            CipherNotification _hidl_vec_element = new CipherNotification();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 64);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.simCipherStatus = _hidl_blob.getString(_hidl_offset + 0);
        parcel.readEmbeddedBuffer(this.simCipherStatus.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 0 + 0, false);
        this.sessionStatus = _hidl_blob.getString(_hidl_offset + 16);
        parcel.readEmbeddedBuffer(this.sessionStatus.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 16 + 0, false);
        this.csStatus = _hidl_blob.getString(_hidl_offset + 32);
        parcel.readEmbeddedBuffer(this.csStatus.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 32 + 0, false);
        this.psStatus = _hidl_blob.getString(_hidl_offset + 48);
        parcel.readEmbeddedBuffer(this.psStatus.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 48 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(64);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<CipherNotification> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 64);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 64);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putString(0 + _hidl_offset, this.simCipherStatus);
        _hidl_blob.putString(16 + _hidl_offset, this.sessionStatus);
        _hidl_blob.putString(32 + _hidl_offset, this.csStatus);
        _hidl_blob.putString(48 + _hidl_offset, this.psStatus);
    }
}
