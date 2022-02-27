package com.mediatek.common.carrierexpress;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface ICarrierExpressService extends IInterface {
    String getActiveOpPack() throws RemoteException;

    Map getAllOpPackList() throws RemoteException;

    String getOpPackFromSimInfo(String str) throws RemoteException;

    List getOperatorSubIdList(String str) throws RemoteException;

    void setOpPackActive(String str, String str2, int i) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICarrierExpressService {
        private static final String DESCRIPTOR = "com.mediatek.common.carrierexpress.ICarrierExpressService";
        static final int TRANSACTION_getActiveOpPack = 1;
        static final int TRANSACTION_getAllOpPackList = 4;
        static final int TRANSACTION_getOpPackFromSimInfo = 2;
        static final int TRANSACTION_getOperatorSubIdList = 5;
        static final int TRANSACTION_setOpPackActive = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarrierExpressService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof ICarrierExpressService)) {
                return new Proxy(obj);
            }
            return (ICarrierExpressService) iin;
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
                        String _result = getActiveOpPack();
                        reply.writeNoException();
                        reply.writeString(_result);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg0 = data.readString();
                        String _result2 = getOpPackFromSimInfo(_arg0);
                        reply.writeNoException();
                        reply.writeString(_result2);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg02 = data.readString();
                        String _arg1 = data.readString();
                        int _arg2 = data.readInt();
                        setOpPackActive(_arg02, _arg1, _arg2);
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        Map _result3 = getAllOpPackList();
                        reply.writeNoException();
                        reply.writeMap(_result3);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg03 = data.readString();
                        List _result4 = getOperatorSubIdList(_arg03);
                        reply.writeNoException();
                        reply.writeList(_result4);
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
        private static class Proxy implements ICarrierExpressService {
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

            @Override // com.mediatek.common.carrierexpress.ICarrierExpressService
            public String getActiveOpPack() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.carrierexpress.ICarrierExpressService
            public String getOpPackFromSimInfo(String mcc_mnc) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(mcc_mnc);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.carrierexpress.ICarrierExpressService
            public void setOpPackActive(String opPack, String opSubId, int mainSlot) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(opPack);
                    _data.writeString(opSubId);
                    _data.writeInt(mainSlot);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.carrierexpress.ICarrierExpressService
            public Map getAllOpPackList() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    Map _result = _reply.readHashMap(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.carrierexpress.ICarrierExpressService
            public List getOperatorSubIdList(String opPack) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(opPack);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    ClassLoader cl = getClass().getClassLoader();
                    List _result = _reply.readArrayList(cl);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
