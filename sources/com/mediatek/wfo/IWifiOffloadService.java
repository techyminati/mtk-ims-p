package com.mediatek.wfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mediatek.wfo.IWifiOffloadListener;
/* loaded from: classes.dex */
public interface IWifiOffloadService extends IInterface {
    void factoryReset() throws RemoteException;

    DisconnectCause getDisconnectCause(int i) throws RemoteException;

    String[] getMccMncAllowList(int i) throws RemoteException;

    int getRatType(int i) throws RemoteException;

    boolean isWifiConnected() throws RemoteException;

    void registerForHandoverEvent(IWifiOffloadListener iWifiOffloadListener) throws RemoteException;

    void setEpdgFqdn(int i, String str, boolean z) throws RemoteException;

    boolean setMccMncAllowList(String[] strArr) throws RemoteException;

    void unregisterForHandoverEvent(IWifiOffloadListener iWifiOffloadListener) throws RemoteException;

    void updateCallState(int i, int i2, int i3, int i4) throws RemoteException;

    void updateRadioState(int i, int i2) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IWifiOffloadService {
        private static final String DESCRIPTOR = "com.mediatek.wfo.IWifiOffloadService";
        static final int TRANSACTION_factoryReset = 11;
        static final int TRANSACTION_getDisconnectCause = 4;
        static final int TRANSACTION_getMccMncAllowList = 10;
        static final int TRANSACTION_getRatType = 3;
        static final int TRANSACTION_isWifiConnected = 7;
        static final int TRANSACTION_registerForHandoverEvent = 1;
        static final int TRANSACTION_setEpdgFqdn = 5;
        static final int TRANSACTION_setMccMncAllowList = 9;
        static final int TRANSACTION_unregisterForHandoverEvent = 2;
        static final int TRANSACTION_updateCallState = 6;
        static final int TRANSACTION_updateRadioState = 8;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiOffloadService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IWifiOffloadService)) {
                return new Proxy(obj);
            }
            return (IWifiOffloadService) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1598968902) {
                boolean _arg2 = false;
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        IWifiOffloadListener _arg0 = IWifiOffloadListener.Stub.asInterface(data.readStrongBinder());
                        registerForHandoverEvent(_arg0);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        IWifiOffloadListener _arg02 = IWifiOffloadListener.Stub.asInterface(data.readStrongBinder());
                        unregisterForHandoverEvent(_arg02);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg03 = data.readInt();
                        int _result = getRatType(_arg03);
                        reply.writeNoException();
                        reply.writeInt(_result);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg04 = data.readInt();
                        DisconnectCause _result2 = getDisconnectCause(_arg04);
                        reply.writeNoException();
                        if (_result2 != null) {
                            reply.writeInt(1);
                            _result2.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg05 = data.readInt();
                        String _arg1 = data.readString();
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        setEpdgFqdn(_arg05, _arg1, _arg2);
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg06 = data.readInt();
                        int _arg12 = data.readInt();
                        int _arg22 = data.readInt();
                        int _arg3 = data.readInt();
                        updateCallState(_arg06, _arg12, _arg22, _arg3);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        boolean isWifiConnected = isWifiConnected();
                        reply.writeNoException();
                        reply.writeInt(isWifiConnected ? 1 : 0);
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg07 = data.readInt();
                        int _arg13 = data.readInt();
                        updateRadioState(_arg07, _arg13);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _arg08 = data.createStringArray();
                        boolean mccMncAllowList = setMccMncAllowList(_arg08);
                        reply.writeNoException();
                        reply.writeInt(mccMncAllowList ? 1 : 0);
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg09 = data.readInt();
                        String[] _result3 = getMccMncAllowList(_arg09);
                        reply.writeNoException();
                        reply.writeStringArray(_result3);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        factoryReset();
                        reply.writeNoException();
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
        private static class Proxy implements IWifiOffloadService {
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

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void registerForHandoverEvent(IWifiOffloadListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void unregisterForHandoverEvent(IWifiOffloadListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public int getRatType(int simIdx) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public DisconnectCause getDisconnectCause(int simIdx) throws RemoteException {
                DisconnectCause _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = DisconnectCause.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void setEpdgFqdn(int simIdx, String fqdn, boolean wfcEnabled) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeString(fqdn);
                    _data.writeInt(wfcEnabled ? 1 : 0);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void updateCallState(int simIdx, int callId, int callType, int callState) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(callId);
                    _data.writeInt(callType);
                    _data.writeInt(callState);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public boolean isWifiConnected() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _result = false;
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void updateRadioState(int simIdx, int radioState) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(radioState);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public boolean setMccMncAllowList(String[] allowList) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(allowList);
                    boolean _result = false;
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = true;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public String[] getMccMncAllowList(int mode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(mode);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadService
            public void factoryReset() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
