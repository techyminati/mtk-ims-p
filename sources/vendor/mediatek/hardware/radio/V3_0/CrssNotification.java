package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class CrssNotification {
    public int cli_validity;
    public int code;
    public int type;
    public String number = new String();
    public String alphaid = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != CrssNotification.class) {
            return false;
        }
        CrssNotification other = (CrssNotification) otherObject;
        if (this.code == other.code && this.type == other.type && HidlSupport.deepEquals(this.number, other.number) && HidlSupport.deepEquals(this.alphaid, other.alphaid) && this.cli_validity == other.cli_validity) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.code))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.type))), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(this.alphaid)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.cli_validity))));
    }

    public final String toString() {
        return "{.code = " + this.code + ", .type = " + this.type + ", .number = " + this.number + ", .alphaid = " + this.alphaid + ", .cli_validity = " + this.cli_validity + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(48L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<CrssNotification> readVectorFromParcel(HwParcel parcel) {
        ArrayList<CrssNotification> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 48, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            CrssNotification _hidl_vec_element = new CrssNotification();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 48);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.code = _hidl_blob.getInt32(_hidl_offset + 0);
        this.type = _hidl_blob.getInt32(_hidl_offset + 4);
        this.number = _hidl_blob.getString(_hidl_offset + 8);
        parcel.readEmbeddedBuffer(this.number.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 8 + 0, false);
        this.alphaid = _hidl_blob.getString(_hidl_offset + 24);
        parcel.readEmbeddedBuffer(this.alphaid.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 24 + 0, false);
        this.cli_validity = _hidl_blob.getInt32(_hidl_offset + 40);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(48);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<CrssNotification> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 48);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 48);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.code);
        _hidl_blob.putInt32(4 + _hidl_offset, this.type);
        _hidl_blob.putString(8 + _hidl_offset, this.number);
        _hidl_blob.putString(24 + _hidl_offset, this.alphaid);
        _hidl_blob.putInt32(40 + _hidl_offset, this.cli_validity);
    }
}
