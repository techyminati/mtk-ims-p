package android.os;

import android.annotation.SystemApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import libcore.util.NativeAllocationRegistry;
@SystemApi
/* loaded from: classes.dex */
public class HwParcel {
    public static final int STATUS_SUCCESS = 0;
    private static final String TAG = "HwParcel";
    private static final NativeAllocationRegistry sNativeRegistry;
    private long mNativeContext;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Status {
    }

    private static final native long native_init();

    private final native void native_setup(boolean z);

    private final native boolean[] readBoolVectorAsArray();

    private final native double[] readDoubleVectorAsArray();

    private final native float[] readFloatVectorAsArray();

    private final native short[] readInt16VectorAsArray();

    private final native int[] readInt32VectorAsArray();

    private final native long[] readInt64VectorAsArray();

    private final native byte[] readInt8VectorAsArray();

    private final native String[] readStringVectorAsArray();

    private final native void writeBoolVector(boolean[] zArr);

    private final native void writeDoubleVector(double[] dArr);

    private final native void writeFloatVector(float[] fArr);

    private final native void writeInt16Vector(short[] sArr);

    private final native void writeInt32Vector(int[] iArr);

    private final native void writeInt64Vector(long[] jArr);

    private final native void writeInt8Vector(byte[] bArr);

    private final native void writeStringVector(String[] strArr);

    public final native void enforceInterface(String str);

    public final native boolean readBool();

    public final native HwBlob readBuffer(long j);

    public final native double readDouble();

    public final native HwBlob readEmbeddedBuffer(long j, long j2, long j3, boolean z);

    public final native float readFloat();

    public final native short readInt16();

    public final native int readInt32();

    public final native long readInt64();

    public final native byte readInt8();

    public final native String readString();

    public final native IHwBinder readStrongBinder();

    public final native void release();

    public final native void releaseTemporaryStorage();

    public final native void send();

    public final native void verifySuccess();

    public final native void writeBool(boolean z);

    public final native void writeBuffer(HwBlob hwBlob);

    public final native void writeDouble(double d);

    public final native void writeFloat(float f);

    public final native void writeInt16(short s);

    public final native void writeInt32(int i);

    public final native void writeInt64(long j);

    public final native void writeInt8(byte b);

    public final native void writeInterfaceToken(String str);

    public final native void writeStatus(int i);

    public final native void writeString(String str);

    public final native void writeStrongBinder(IHwBinder iHwBinder);

    private HwParcel(boolean allocate) {
        native_setup(allocate);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    public HwParcel() {
        native_setup(true);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    public final void writeBoolVector(ArrayList<Boolean> val) {
        int n = val.size();
        boolean[] array = new boolean[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).booleanValue();
        }
        writeBoolVector(array);
    }

    public final void writeInt8Vector(ArrayList<Byte> val) {
        int n = val.size();
        byte[] array = new byte[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).byteValue();
        }
        writeInt8Vector(array);
    }

    public final void writeInt16Vector(ArrayList<Short> val) {
        int n = val.size();
        short[] array = new short[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).shortValue();
        }
        writeInt16Vector(array);
    }

    public final void writeInt32Vector(ArrayList<Integer> val) {
        int n = val.size();
        int[] array = new int[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).intValue();
        }
        writeInt32Vector(array);
    }

    public final void writeInt64Vector(ArrayList<Long> val) {
        int n = val.size();
        long[] array = new long[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).longValue();
        }
        writeInt64Vector(array);
    }

    public final void writeFloatVector(ArrayList<Float> val) {
        int n = val.size();
        float[] array = new float[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).floatValue();
        }
        writeFloatVector(array);
    }

    public final void writeDoubleVector(ArrayList<Double> val) {
        int n = val.size();
        double[] array = new double[n];
        for (int i = 0; i < n; i++) {
            array[i] = val.get(i).doubleValue();
        }
        writeDoubleVector(array);
    }

    public final void writeStringVector(ArrayList<String> val) {
        writeStringVector((String[]) val.toArray(new String[val.size()]));
    }

    public final ArrayList<Boolean> readBoolVector() {
        Boolean[] array = HwBlob.wrapArray(readBoolVectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Byte> readInt8Vector() {
        Byte[] array = HwBlob.wrapArray(readInt8VectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Short> readInt16Vector() {
        Short[] array = HwBlob.wrapArray(readInt16VectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Integer> readInt32Vector() {
        Integer[] array = HwBlob.wrapArray(readInt32VectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Long> readInt64Vector() {
        Long[] array = HwBlob.wrapArray(readInt64VectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Float> readFloatVector() {
        Float[] array = HwBlob.wrapArray(readFloatVectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<Double> readDoubleVector() {
        Double[] array = HwBlob.wrapArray(readDoubleVectorAsArray());
        return new ArrayList<>(Arrays.asList(array));
    }

    public final ArrayList<String> readStringVector() {
        return new ArrayList<>(Arrays.asList(readStringVectorAsArray()));
    }

    static {
        long freeFunction = native_init();
        sNativeRegistry = new NativeAllocationRegistry(HwParcel.class.getClassLoader(), freeFunction, 128L);
    }
}
