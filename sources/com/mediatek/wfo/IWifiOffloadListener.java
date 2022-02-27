package com.mediatek.wfo;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IWifiOffloadListener extends IInterface {
    void onHandover(int i, int i2, int i3) throws RemoteException;

    void onRequestImsSwitch(int i, boolean z) throws RemoteException;

    void onRoveOut(int i, boolean z, int i2) throws RemoteException;

    void onWifiPdnOOSStateChanged(int i, int i2) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IWifiOffloadListener {
        private static final String DESCRIPTOR = "com.mediatek.wfo.IWifiOffloadListener";
        static final int TRANSACTION_onHandover = 1;
        static final int TRANSACTION_onRequestImsSwitch = 3;
        static final int TRANSACTION_onRoveOut = 2;
        static final int TRANSACTION_onWifiPdnOOSStateChanged = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiOffloadListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IWifiOffloadListener)) {
                return new Proxy(obj);
            }
            return (IWifiOffloadListener) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1598968902) {
                boolean _arg1 = false;
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg0 = data.readInt();
                        int _arg12 = data.readInt();
                        int _arg2 = data.readInt();
                        onHandover(_arg0, _arg12, _arg2);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg02 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        int _arg22 = data.readInt();
                        onRoveOut(_arg02, _arg1, _arg22);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg03 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = true;
                        }
                        onRequestImsSwitch(_arg03, _arg1);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg04 = data.readInt();
                        onWifiPdnOOSStateChanged(_arg04, data.readInt());
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
        private static class Proxy implements IWifiOffloadListener {
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

            @Override // com.mediatek.wfo.IWifiOffloadListener
            public void onHandover(int simIdx, int stage, int ratType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(stage);
                    _data.writeInt(ratType);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadListener
            public void onRoveOut(int simIdx, boolean roveOut, int rssi) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(roveOut ? 1 : 0);
                    _data.writeInt(rssi);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadListener
            public void onRequestImsSwitch(int simIdx, boolean isImsOn) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(isImsOn ? 1 : 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // com.mediatek.wfo.IWifiOffloadListener
            public void onWifiPdnOOSStateChanged(int simIdx, int oosState) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(simIdx);
                    _data.writeInt(oosState);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
