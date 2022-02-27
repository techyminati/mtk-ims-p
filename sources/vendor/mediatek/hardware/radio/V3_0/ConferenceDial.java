package vendor.mediatek.hardware.radio.V3_0;

import android.hardware.radio.V1_0.Clir;
import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class ConferenceDial {
    public int clir;
    public final ArrayList<String> dialNumbers = new ArrayList<>();
    public boolean isVideoCall;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != ConferenceDial.class) {
            return false;
        }
        ConferenceDial other = (ConferenceDial) otherObject;
        if (this.clir == other.clir && this.isVideoCall == other.isVideoCall && HidlSupport.deepEquals(this.dialNumbers, other.dialNumbers)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.clir))), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.isVideoCall))), Integer.valueOf(HidlSupport.deepHashCode(this.dialNumbers)));
    }

    public final String toString() {
        return "{.clir = " + Clir.toString(this.clir) + ", .isVideoCall = " + this.isVideoCall + ", .dialNumbers = " + this.dialNumbers + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(24L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<ConferenceDial> readVectorFromParcel(HwParcel parcel) {
        ArrayList<ConferenceDial> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 24, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            ConferenceDial _hidl_vec_element = new ConferenceDial();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 24);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.clir = _hidl_blob.getInt32(_hidl_offset + 0);
        this.isVideoCall = _hidl_blob.getBool(_hidl_offset + 4);
        int _hidl_vec_size = _hidl_blob.getInt32(_hidl_offset + 8 + 8);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 16, _hidl_blob.handle(), _hidl_offset + 8 + 0, true);
        this.dialNumbers.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            new String();
            String _hidl_vec_element = childBlob.getString(_hidl_index_0 * 16);
            parcel.readEmbeddedBuffer(_hidl_vec_element.getBytes().length + 1, childBlob.handle(), (_hidl_index_0 * 16) + 0, false);
            this.dialNumbers.add(_hidl_vec_element);
        }
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(24);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<ConferenceDial> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 24);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 24);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(_hidl_offset + 0, this.clir);
        _hidl_blob.putBool(4 + _hidl_offset, this.isVideoCall);
        int _hidl_vec_size = this.dialNumbers.size();
        _hidl_blob.putInt32(_hidl_offset + 8 + 8, _hidl_vec_size);
        _hidl_blob.putBool(_hidl_offset + 8 + 12, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 16);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            childBlob.putString(_hidl_index_0 * 16, this.dialNumbers.get(_hidl_index_0));
        }
        _hidl_blob.putBlob(8 + _hidl_offset + 0, childBlob);
    }
}
