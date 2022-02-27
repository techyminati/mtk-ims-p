package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import com.mediatek.ims.ImsCallSessionProxy;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class DedicateDataCall {
    public int active;
    public int bearerId;
    public int cid;
    public int ddcId;
    public int failCause;
    public int hasPcscf;
    public int hasQos;
    public int hasTft;
    public int interfaceId;
    public int primaryCid;
    public int signalingFlag;
    public final Qos qos = new Qos();
    public final Tft tft = new Tft();
    public String pcscf = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != DedicateDataCall.class) {
            return false;
        }
        DedicateDataCall other = (DedicateDataCall) otherObject;
        if (this.ddcId == other.ddcId && this.interfaceId == other.interfaceId && this.primaryCid == other.primaryCid && this.cid == other.cid && this.active == other.active && this.signalingFlag == other.signalingFlag && this.bearerId == other.bearerId && this.failCause == other.failCause && this.hasQos == other.hasQos && HidlSupport.deepEquals(this.qos, other.qos) && this.hasTft == other.hasTft && HidlSupport.deepEquals(this.tft, other.tft) && this.hasPcscf == other.hasPcscf && HidlSupport.deepEquals(this.pcscf, other.pcscf)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ddcId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.interfaceId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.primaryCid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.cid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.active))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.signalingFlag))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.bearerId))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.failCause))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.hasQos))), Integer.valueOf(HidlSupport.deepHashCode(this.qos)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.hasTft))), Integer.valueOf(HidlSupport.deepHashCode(this.tft)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.hasPcscf))), Integer.valueOf(HidlSupport.deepHashCode(this.pcscf)));
    }

    public final String toString() {
        return "{.ddcId = " + this.ddcId + ", .interfaceId = " + this.interfaceId + ", .primaryCid = " + this.primaryCid + ", .cid = " + this.cid + ", .active = " + this.active + ", .signalingFlag = " + this.signalingFlag + ", .bearerId = " + this.bearerId + ", .failCause = " + this.failCause + ", .hasQos = " + this.hasQos + ", .qos = " + this.qos + ", .hasTft = " + this.hasTft + ", .tft = " + this.tft + ", .hasPcscf = " + this.hasPcscf + ", .pcscf = " + this.pcscf + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(136L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<DedicateDataCall> readVectorFromParcel(HwParcel parcel) {
        ArrayList<DedicateDataCall> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            DedicateDataCall _hidl_vec_element = new DedicateDataCall();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.ddcId = _hidl_blob.getInt32(_hidl_offset + 0);
        this.interfaceId = _hidl_blob.getInt32(_hidl_offset + 4);
        this.primaryCid = _hidl_blob.getInt32(_hidl_offset + 8);
        this.cid = _hidl_blob.getInt32(_hidl_offset + 12);
        this.active = _hidl_blob.getInt32(_hidl_offset + 16);
        this.signalingFlag = _hidl_blob.getInt32(_hidl_offset + 20);
        this.bearerId = _hidl_blob.getInt32(_hidl_offset + 24);
        this.failCause = _hidl_blob.getInt32(_hidl_offset + 28);
        this.hasQos = _hidl_blob.getInt32(_hidl_offset + 32);
        this.qos.readEmbeddedFromParcel(parcel, _hidl_blob, _hidl_offset + 36);
        this.hasTft = _hidl_blob.getInt32(_hidl_offset + 56);
        this.tft.readEmbeddedFromParcel(parcel, _hidl_blob, _hidl_offset + 64);
        this.hasPcscf = _hidl_blob.getInt32(_hidl_offset + 112);
        this.pcscf = _hidl_blob.getString(_hidl_offset + 120);
        parcel.readEmbeddedBuffer(this.pcscf.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 120 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<DedicateDataCall> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * ImsCallSessionProxy.CALL_INFO_MSG_TYPE_REMOTE_RESUME);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.ddcId);
        _hidl_blob.putInt32(4 + _hidl_offset, this.interfaceId);
        _hidl_blob.putInt32(8 + _hidl_offset, this.primaryCid);
        _hidl_blob.putInt32(12 + _hidl_offset, this.cid);
        _hidl_blob.putInt32(16 + _hidl_offset, this.active);
        _hidl_blob.putInt32(20 + _hidl_offset, this.signalingFlag);
        _hidl_blob.putInt32(24 + _hidl_offset, this.bearerId);
        _hidl_blob.putInt32(28 + _hidl_offset, this.failCause);
        _hidl_blob.putInt32(32 + _hidl_offset, this.hasQos);
        this.qos.writeEmbeddedToBlob(_hidl_blob, 36 + _hidl_offset);
        _hidl_blob.putInt32(56 + _hidl_offset, this.hasTft);
        this.tft.writeEmbeddedToBlob(_hidl_blob, 64 + _hidl_offset);
        _hidl_blob.putInt32(112 + _hidl_offset, this.hasPcscf);
        _hidl_blob.putString(120 + _hidl_offset, this.pcscf);
    }
}
