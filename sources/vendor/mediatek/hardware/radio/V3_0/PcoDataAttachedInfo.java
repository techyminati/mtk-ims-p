package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class PcoDataAttachedInfo {
    public int cid;
    public int pcoId;
    public String apnName = new String();
    public String bearerProto = new String();
    public final ArrayList<Byte> contents = new ArrayList<>();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != PcoDataAttachedInfo.class) {
            return false;
        }
        PcoDataAttachedInfo other = (PcoDataAttachedInfo) otherObject;
        if (this.cid == other.cid && HidlSupport.deepEquals(this.apnName, other.apnName) && HidlSupport.deepEquals(this.bearerProto, other.bearerProto) && this.pcoId == other.pcoId && HidlSupport.deepEquals(this.contents, other.contents)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.cid))), Integer.valueOf(HidlSupport.deepHashCode(this.apnName)), Integer.valueOf(HidlSupport.deepHashCode(this.bearerProto)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pcoId))), Integer.valueOf(HidlSupport.deepHashCode(this.contents)));
    }

    public final String toString() {
        return "{.cid = " + this.cid + ", .apnName = " + this.apnName + ", .bearerProto = " + this.bearerProto + ", .pcoId = " + this.pcoId + ", .contents = " + this.contents + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(64L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<PcoDataAttachedInfo> readVectorFromParcel(HwParcel parcel) {
        ArrayList<PcoDataAttachedInfo> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 64, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            PcoDataAttachedInfo _hidl_vec_element = new PcoDataAttachedInfo();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 64);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.cid = _hidl_blob.getInt32(_hidl_offset + 0);
        this.apnName = _hidl_blob.getString(_hidl_offset + 8);
        parcel.readEmbeddedBuffer(this.apnName.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 8 + 0, false);
        this.bearerProto = _hidl_blob.getString(_hidl_offset + 24);
        parcel.readEmbeddedBuffer(this.bearerProto.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 24 + 0, false);
        this.pcoId = _hidl_blob.getInt32(_hidl_offset + 40);
        int _hidl_vec_size = _hidl_blob.getInt32(_hidl_offset + 48 + 8);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 1, _hidl_blob.handle(), _hidl_offset + 48 + 0, true);
        this.contents.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            byte _hidl_vec_element = childBlob.getInt8(_hidl_index_0 * 1);
            this.contents.add(Byte.valueOf(_hidl_vec_element));
        }
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(64);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<PcoDataAttachedInfo> _hidl_vec) {
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
        _hidl_blob.putInt32(_hidl_offset + 0, this.cid);
        _hidl_blob.putString(_hidl_offset + 8, this.apnName);
        _hidl_blob.putString(24 + _hidl_offset, this.bearerProto);
        _hidl_blob.putInt32(40 + _hidl_offset, this.pcoId);
        int _hidl_vec_size = this.contents.size();
        _hidl_blob.putInt32(_hidl_offset + 48 + 8, _hidl_vec_size);
        _hidl_blob.putBool(_hidl_offset + 48 + 12, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 1);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            childBlob.putInt8(_hidl_index_0 * 1, this.contents.get(_hidl_index_0).byteValue());
        }
        _hidl_blob.putBlob(48 + _hidl_offset + 0, childBlob);
    }
}
