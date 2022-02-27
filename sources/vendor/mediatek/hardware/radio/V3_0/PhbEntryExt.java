package vendor.mediatek.hardware.radio.V3_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes.dex */
public final class PhbEntryExt {
    public int adtype;
    public int hidden;
    public int index;
    public int type;
    public String number = new String();
    public String text = new String();
    public String group = new String();
    public String adnumber = new String();
    public String secondtext = new String();
    public String email = new String();

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != PhbEntryExt.class) {
            return false;
        }
        PhbEntryExt other = (PhbEntryExt) otherObject;
        if (this.index == other.index && HidlSupport.deepEquals(this.number, other.number) && this.type == other.type && HidlSupport.deepEquals(this.text, other.text) && this.hidden == other.hidden && HidlSupport.deepEquals(this.group, other.group) && HidlSupport.deepEquals(this.adnumber, other.adnumber) && this.adtype == other.adtype && HidlSupport.deepEquals(this.secondtext, other.secondtext) && HidlSupport.deepEquals(this.email, other.email)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.index))), Integer.valueOf(HidlSupport.deepHashCode(this.number)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.type))), Integer.valueOf(HidlSupport.deepHashCode(this.text)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.hidden))), Integer.valueOf(HidlSupport.deepHashCode(this.group)), Integer.valueOf(HidlSupport.deepHashCode(this.adnumber)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.adtype))), Integer.valueOf(HidlSupport.deepHashCode(this.secondtext)), Integer.valueOf(HidlSupport.deepHashCode(this.email)));
    }

    public final String toString() {
        return "{.index = " + this.index + ", .number = " + this.number + ", .type = " + this.type + ", .text = " + this.text + ", .hidden = " + this.hidden + ", .group = " + this.group + ", .adnumber = " + this.adnumber + ", .adtype = " + this.adtype + ", .secondtext = " + this.secondtext + ", .email = " + this.email + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(128L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<PhbEntryExt> readVectorFromParcel(HwParcel parcel) {
        ArrayList<PhbEntryExt> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 128, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            PhbEntryExt _hidl_vec_element = new PhbEntryExt();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 128);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        this.index = _hidl_blob.getInt32(_hidl_offset + 0);
        this.number = _hidl_blob.getString(_hidl_offset + 8);
        parcel.readEmbeddedBuffer(this.number.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 8 + 0, false);
        this.type = _hidl_blob.getInt32(_hidl_offset + 24);
        this.text = _hidl_blob.getString(_hidl_offset + 32);
        parcel.readEmbeddedBuffer(this.text.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 32 + 0, false);
        this.hidden = _hidl_blob.getInt32(_hidl_offset + 48);
        this.group = _hidl_blob.getString(_hidl_offset + 56);
        parcel.readEmbeddedBuffer(this.group.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 56 + 0, false);
        this.adnumber = _hidl_blob.getString(_hidl_offset + 72);
        parcel.readEmbeddedBuffer(this.adnumber.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 72 + 0, false);
        this.adtype = _hidl_blob.getInt32(_hidl_offset + 88);
        this.secondtext = _hidl_blob.getString(_hidl_offset + 96);
        parcel.readEmbeddedBuffer(this.secondtext.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 96 + 0, false);
        this.email = _hidl_blob.getString(_hidl_offset + 112);
        parcel.readEmbeddedBuffer(this.email.getBytes().length + 1, _hidl_blob.handle(), _hidl_offset + 112 + 0, false);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(128);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<PhbEntryExt> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 128);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 128);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        _hidl_blob.putInt32(0 + _hidl_offset, this.index);
        _hidl_blob.putString(8 + _hidl_offset, this.number);
        _hidl_blob.putInt32(24 + _hidl_offset, this.type);
        _hidl_blob.putString(32 + _hidl_offset, this.text);
        _hidl_blob.putInt32(48 + _hidl_offset, this.hidden);
        _hidl_blob.putString(56 + _hidl_offset, this.group);
        _hidl_blob.putString(72 + _hidl_offset, this.adnumber);
        _hidl_blob.putInt32(88 + _hidl_offset, this.adtype);
        _hidl_blob.putString(96 + _hidl_offset, this.secondtext);
        _hidl_blob.putString(112 + _hidl_offset, this.email);
    }
}
