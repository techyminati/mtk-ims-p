package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class Dialog {
    public String address = new String();
    public int callState;
    public int callType;
    public int dialogId;
    public boolean isCallHeld;
    public boolean isPullable;

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != Dialog.class) {
            return false;
        }
        Dialog other = (Dialog) otherObject;
        if (this.dialogId == other.dialogId && this.callState == other.callState && this.callType == other.callType && this.isPullable == other.isPullable && this.isCallHeld == other.isCallHeld && HidlSupport.deepEquals(this.address, other.address)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dialogId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callState))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callType))), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.isPullable))), Integer.valueOf(HidlSupport.deepHashCode(Boolean.valueOf(this.isCallHeld))), Integer.valueOf(HidlSupport.deepHashCode(this.address)));
    }

    public final String toString() {
        return "{.dialogId = " + this.dialogId + ", .callState = " + this.callState + ", .callType = " + this.callType + ", .isPullable = " + this.isPullable + ", .isCallHeld = " + this.isCallHeld + ", .address = " + this.address + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(32L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<Dialog> readVectorFromParcel(HwParcel parcel) {
        ArrayList<Dialog> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            Dialog _hidl_vec_element = new Dialog();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 32);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.dialogId = _hidl_blob.getInt32(_hidl_offset + 0);
        this.callState = _hidl_blob.getInt32(_hidl_offset + 4);
        this.callType = _hidl_blob.getInt32(_hidl_offset + 8);
        this.isPullable = _hidl_blob.getBool(_hidl_offset + 12);
        this.isCallHeld = _hidl_blob.getBool(_hidl_offset + 13);
        this.address = _hidl_blob.getString(_hidl_offset + 16);
        parcel.readEmbeddedBuffer(this.address.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 16 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(32);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<Dialog> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 32);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.dialogId);
        _hidl_blob.putInt32(4 + _hidl_offset, this.callState);
        _hidl_blob.putInt32(8 + _hidl_offset, this.callType);
        _hidl_blob.putBool(12 + _hidl_offset, this.isPullable);
        _hidl_blob.putBool(13 + _hidl_offset, this.isCallHeld);
        _hidl_blob.putString(16 + _hidl_offset, this.address);
    }
}
