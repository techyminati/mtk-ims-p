package vendor.mediatek.hardware.radio.V3_0;

import android.hardware.radio.V1_0.DataCallFailCause;
import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class IncomingCallNotification {
    public String callId = new String();
    public String number = new String();
    public String type = new String();
    public String callMode = new String();
    public String seqNo = new String();
    public String redirectNumber = new String();
    public String toNumber = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != IncomingCallNotification.class) {
            return false;
        }
        IncomingCallNotification other = (IncomingCallNotification) otherObject;
        if (HidlSupport.deepEquals(this.callId, other.callId) && HidlSupport.deepEquals(this.number, other.number) && HidlSupport.deepEquals(this.type, other.type) && HidlSupport.deepEquals(this.callMode, other.callMode) && HidlSupport.deepEquals(this.seqNo, other.seqNo) && HidlSupport.deepEquals(this.redirectNumber, other.redirectNumber) && HidlSupport.deepEquals(this.toNumber, other.toNumber)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.callId)), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(this.type)), Integer.valueOf(HidlSupport.deepHashCode(this.callMode)), Integer.valueOf(HidlSupport.deepHashCode(this.seqNo)), Integer.valueOf(HidlSupport.deepHashCode(this.redirectNumber)), Integer.valueOf(HidlSupport.deepHashCode(this.toNumber)));
    }

    public final String toString() {
        return "{.callId = " + this.callId + ", .number = " + this.number + ", .type = " + this.type + ", .callMode = " + this.callMode + ", .seqNo = " + this.seqNo + ", .redirectNumber = " + this.redirectNumber + ", .toNumber = " + this.toNumber + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(112L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<IncomingCallNotification> readVectorFromParcel(HwParcel parcel) {
        ArrayList<IncomingCallNotification> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * DataCallFailCause.APN_TYPE_CONFLICT, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            IncomingCallNotification _hidl_vec_element = new IncomingCallNotification();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * DataCallFailCause.APN_TYPE_CONFLICT);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.callId = _hidl_blob.getString(_hidl_offset + 0);
        parcel.readEmbeddedBuffer(this.callId.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 0 + 0, false);
        this.number = _hidl_blob.getString(_hidl_offset + 16);
        parcel.readEmbeddedBuffer(this.number.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 16 + 0, false);
        this.type = _hidl_blob.getString(_hidl_offset + 32);
        parcel.readEmbeddedBuffer(this.type.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 32 + 0, false);
        this.callMode = _hidl_blob.getString(_hidl_offset + 48);
        parcel.readEmbeddedBuffer(this.callMode.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 48 + 0, false);
        this.seqNo = _hidl_blob.getString(_hidl_offset + 64);
        parcel.readEmbeddedBuffer(this.seqNo.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 64 + 0, false);
        this.redirectNumber = _hidl_blob.getString(_hidl_offset + 80);
        parcel.readEmbeddedBuffer(this.redirectNumber.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 80 + 0, false);
        this.toNumber = _hidl_blob.getString(_hidl_offset + 96);
        parcel.readEmbeddedBuffer(this.toNumber.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 96 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(DataCallFailCause.APN_TYPE_CONFLICT);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<IncomingCallNotification> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * DataCallFailCause.APN_TYPE_CONFLICT);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * DataCallFailCause.APN_TYPE_CONFLICT);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putString(0 + _hidl_offset, this.callId);
        _hidl_blob.putString(16 + _hidl_offset, this.number);
        _hidl_blob.putString(32 + _hidl_offset, this.type);
        _hidl_blob.putString(48 + _hidl_offset, this.callMode);
        _hidl_blob.putString(64 + _hidl_offset, this.seqNo);
        _hidl_blob.putString(80 + _hidl_offset, this.redirectNumber);
        _hidl_blob.putString(96 + _hidl_offset, this.toNumber);
    }
}
