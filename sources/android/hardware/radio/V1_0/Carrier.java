package android.hardware.radio.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class Carrier {
    public int matchType;
    public String mcc = new String();
    public String mnc = new String();
    public String matchData = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != Carrier.class) {
            return false;
        }
        Carrier other = (Carrier) otherObject;
        if (HidlSupport.deepEquals(this.mcc, other.mcc) && HidlSupport.deepEquals(this.mnc, other.mnc) && this.matchType == other.matchType && HidlSupport.deepEquals(this.matchData, other.matchData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.mcc)), Integer.valueOf(HidlSupport.deepHashCode(this.mnc)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.matchType))), Integer.valueOf(HidlSupport.deepHashCode(this.matchData)));
    }

    public final String toString() {
        return "{.mcc = " + this.mcc + ", .mnc = " + this.mnc + ", .matchType = " + CarrierMatchType.toString(this.matchType) + ", .matchData = " + this.matchData + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(56L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<Carrier> readVectorFromParcel(HwParcel parcel) {
        ArrayList<Carrier> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 56, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            Carrier _hidl_vec_element = new Carrier();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 56);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.mcc = _hidl_blob.getString(_hidl_offset + 0);
        parcel.readEmbeddedBuffer(this.mcc.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 0 + 0, false);
        this.mnc = _hidl_blob.getString(_hidl_offset + 16);
        parcel.readEmbeddedBuffer(this.mnc.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 16 + 0, false);
        this.matchType = _hidl_blob.getInt32(_hidl_offset + 32);
        this.matchData = _hidl_blob.getString(_hidl_offset + 40);
        parcel.readEmbeddedBuffer(this.matchData.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 40 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(56);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<Carrier> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 56);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 56);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putString(0 + _hidl_offset, this.mcc);
        _hidl_blob.putString(16 + _hidl_offset, this.mnc);
        _hidl_blob.putInt32(32 + _hidl_offset, this.matchType);
        _hidl_blob.putString(40 + _hidl_offset, this.matchData);
    }
}
