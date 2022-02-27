package com.mediatek.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.ims.ImsConfigListener;
/* loaded from: classes.dex */
public interface IMtkImsConfig extends IInterface {
    void getFeatureValue(int i, int i2, ImsConfigListener imsConfigListener) throws RemoteException;

    int getImsResCapability(int i) throws RemoteException;

    String getProvisionedStringValue(int i) throws RemoteException;

    int getProvisionedValue(int i) throws RemoteException;

    void getVideoQuality(ImsConfigListener imsConfigListener) throws RemoteException;

    void setFeatureValue(int i, int i2, int i3, ImsConfigListener imsConfigListener) throws RemoteException;

    void setImsResCapability(int i, int i2) throws RemoteException;

    int[] setModemImsCfg(String[] strArr, String[] strArr2, int i) throws RemoteException;

    int[] setModemImsIwlanCfg(String[] strArr, String[] strArr2, int i) throws RemoteException;

    int[] setModemImsWoCfg(String[] strArr, String[] strArr2, int i) throws RemoteException;

    void setMultiFeatureValues(int[] iArr, int[] iArr2, int[] iArr3, ImsConfigListener imsConfigListener) throws RemoteException;

    int setProvisionedStringValue(int i, String str) throws RemoteException;

    int setProvisionedValue(int i, int i2) throws RemoteException;

    void setVideoQuality(int i, ImsConfigListener imsConfigListener) throws RemoteException;

    void setVoltePreference(int i) throws RemoteException;

    void setWfcMode(int i) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMtkImsConfig {
        private static final String DESCRIPTOR = "com.mediatek.ims.internal.IMtkImsConfig";
        static final int TRANSACTION_getFeatureValue = 5;
        static final int TRANSACTION_getImsResCapability = 11;
        static final int TRANSACTION_getProvisionedStringValue = 2;
        static final int TRANSACTION_getProvisionedValue = 1;
        static final int TRANSACTION_getVideoQuality = 8;
        static final int TRANSACTION_setFeatureValue = 6;
        static final int TRANSACTION_setImsResCapability = 10;
        static final int TRANSACTION_setModemImsCfg = 14;
        static final int TRANSACTION_setModemImsIwlanCfg = 16;
        static final int TRANSACTION_setModemImsWoCfg = 15;
        static final int TRANSACTION_setMultiFeatureValues = 7;
        static final int TRANSACTION_setProvisionedStringValue = 4;
        static final int TRANSACTION_setProvisionedValue = 3;
        static final int TRANSACTION_setVideoQuality = 9;
        static final int TRANSACTION_setVoltePreference = 13;
        static final int TRANSACTION_setWfcMode = 12;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMtkImsConfig asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMtkImsConfig)) {
                return new Proxy(obj);
            }
            return (IMtkImsConfig) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg0 = data.readInt();
                        int _result = getProvisionedValue(_arg0);
                        reply.writeNoException();
                        reply.writeInt(_result);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg02 = data.readInt();
                        String _result2 = getProvisionedStringValue(_arg02);
                        reply.writeNoException();
                        reply.writeString(_result2);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg03 = data.readInt();
                        int _arg1 = data.readInt();
                        int _result3 = setProvisionedValue(_arg03, _arg1);
                        reply.writeNoException();
                        reply.writeInt(_result3);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg04 = data.readInt();
                        String _arg12 = data.readString();
                        int _result4 = setProvisionedStringValue(_arg04, _arg12);
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg05 = data.readInt();
                        int _arg13 = data.readInt();
                        ImsConfigListener _arg2 = ImsConfigListener.Stub.asInterface(data.readStrongBinder());
                        getFeatureValue(_arg05, _arg13, _arg2);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg06 = data.readInt();
                        int _arg14 = data.readInt();
                        int _arg22 = data.readInt();
                        ImsConfigListener _arg3 = ImsConfigListener.Stub.asInterface(data.readStrongBinder());
                        setFeatureValue(_arg06, _arg14, _arg22, _arg3);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        int[] _arg07 = data.createIntArray();
                        int[] _arg15 = data.createIntArray();
                        int[] _arg23 = data.createIntArray();
                        ImsConfigListener _arg32 = ImsConfigListener.Stub.asInterface(data.readStrongBinder());
                        setMultiFeatureValues(_arg07, _arg15, _arg23, _arg32);
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        ImsConfigListener _arg08 = ImsConfigListener.Stub.asInterface(data.readStrongBinder());
                        getVideoQuality(_arg08);
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg09 = data.readInt();
                        ImsConfigListener _arg16 = ImsConfigListener.Stub.asInterface(data.readStrongBinder());
                        setVideoQuality(_arg09, _arg16);
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg010 = data.readInt();
                        int _arg17 = data.readInt();
                        setImsResCapability(_arg010, _arg17);
                        reply.writeNoException();
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg011 = data.readInt();
                        int _result5 = getImsResCapability(_arg011);
                        reply.writeNoException();
                        reply.writeInt(_result5);
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg012 = data.readInt();
                        setWfcMode(_arg012);
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg013 = data.readInt();
                        setVoltePreference(_arg013);
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _arg014 = data.createStringArray();
                        String[] _arg18 = data.createStringArray();
                        int _arg24 = data.readInt();
                        int[] _result6 = setModemImsCfg(_arg014, _arg18, _arg24);
                        reply.writeNoException();
                        reply.writeIntArray(_result6);
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _arg015 = data.createStringArray();
                        String[] _arg19 = data.createStringArray();
                        int _arg25 = data.readInt();
                        int[] _result7 = setModemImsWoCfg(_arg015, _arg19, _arg25);
                        reply.writeNoException();
                        reply.writeIntArray(_result7);
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _arg016 = data.createStringArray();
                        String[] _arg110 = data.createStringArray();
                        int _arg26 = data.readInt();
                        int[] _result8 = setModemImsIwlanCfg(_arg016, _arg110, _arg26);
                        reply.writeNoException();
                        reply.writeIntArray(_result8);
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            } else {
                reply.writeString(DESCRIPTOR);
                return true;
            }
        }

        /* loaded from: classes.dex */
        private static class Proxy implements IMtkImsConfig {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int getProvisionedValue(int item) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(item);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public String getProvisionedStringValue(int item) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(item);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int setProvisionedValue(int item, int value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(item);
                    _data.writeInt(value);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int setProvisionedStringValue(int item, String value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(item);
                    _data.writeString(value);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void getFeatureValue(int feature, int network, ImsConfigListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(feature);
                    _data.writeInt(network);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(feature);
                    _data.writeInt(network);
                    _data.writeInt(value);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setMultiFeatureValues(int[] feature, int[] network, int[] value, ImsConfigListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(feature);
                    _data.writeIntArray(network);
                    _data.writeIntArray(value);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void getVideoQuality(ImsConfigListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setVideoQuality(int quality, ImsConfigListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(quality);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setImsResCapability(int feature, int value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(feature);
                    _data.writeInt(value);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int getImsResCapability(int feature) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(feature);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setWfcMode(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public void setVoltePreference(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int[] setModemImsCfg(String[] keys, String[] values, int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(keys);
                    _data.writeStringArray(values);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int[] setModemImsWoCfg(String[] keys, String[] values, int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(keys);
                    _data.writeStringArray(values);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsConfig
            public int[] setModemImsIwlanCfg(String[] keys, String[] values, int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(keys);
                    _data.writeStringArray(values);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
