package com.mediatek.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import com.mediatek.ims.internal.IMtkImsUtListener;
/* loaded from: classes.dex */
public interface IMtkImsUt extends IInterface {
    String getUtIMPUFromNetwork() throws RemoteException;

    String getXcapConflictErrorMessage() throws RemoteException;

    boolean isSupportCFT() throws RemoteException;

    void processECT(Message message, Messenger messenger) throws RemoteException;

    int queryCallForwardInTimeSlot(int i) throws RemoteException;

    void setListener(IMtkImsUtListener iMtkImsUtListener) throws RemoteException;

    void setupXcapUserAgentString(String str) throws RemoteException;

    int updateCallBarringForServiceClass(String str, int i, int i2, String[] strArr, int i3) throws RemoteException;

    int updateCallForwardInTimeSlot(int i, int i2, String str, int i3, long[] jArr) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMtkImsUt {
        private static final String DESCRIPTOR = "com.mediatek.ims.internal.IMtkImsUt";
        static final int TRANSACTION_getUtIMPUFromNetwork = 2;
        static final int TRANSACTION_getXcapConflictErrorMessage = 9;
        static final int TRANSACTION_isSupportCFT = 7;
        static final int TRANSACTION_processECT = 6;
        static final int TRANSACTION_queryCallForwardInTimeSlot = 3;
        static final int TRANSACTION_setListener = 1;
        static final int TRANSACTION_setupXcapUserAgentString = 8;
        static final int TRANSACTION_updateCallBarringForServiceClass = 5;
        static final int TRANSACTION_updateCallForwardInTimeSlot = 4;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMtkImsUt asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMtkImsUt)) {
                return new Proxy(obj);
            }
            return (IMtkImsUt) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Message _arg0;
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsUtListener _arg02 = IMtkImsUtListener.Stub.asInterface(data.readStrongBinder());
                        setListener(_arg02);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        String _result = getUtIMPUFromNetwork();
                        reply.writeNoException();
                        reply.writeString(_result);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg03 = data.readInt();
                        int _result2 = queryCallForwardInTimeSlot(_arg03);
                        reply.writeNoException();
                        reply.writeInt(_result2);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg04 = data.readInt();
                        int _arg1 = data.readInt();
                        String _arg2 = data.readString();
                        int _arg3 = data.readInt();
                        long[] _arg4 = data.createLongArray();
                        int _result3 = updateCallForwardInTimeSlot(_arg04, _arg1, _arg2, _arg3, _arg4);
                        reply.writeNoException();
                        reply.writeInt(_result3);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg05 = data.readString();
                        int _arg12 = data.readInt();
                        int _arg22 = data.readInt();
                        String[] _arg32 = data.createStringArray();
                        int _arg42 = data.readInt();
                        int _result4 = updateCallBarringForServiceClass(_arg05, _arg12, _arg22, _arg32, _arg42);
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        Messenger _arg13 = null;
                        if (data.readInt() != 0) {
                            _arg0 = (Message) Message.CREATOR.createFromParcel(data);
                        } else {
                            _arg0 = null;
                        }
                        if (data.readInt() != 0) {
                            _arg13 = (Messenger) Messenger.CREATOR.createFromParcel(data);
                        }
                        processECT(_arg0, _arg13);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        boolean isSupportCFT = isSupportCFT();
                        reply.writeNoException();
                        reply.writeInt(isSupportCFT ? 1 : 0);
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg06 = data.readString();
                        setupXcapUserAgentString(_arg06);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        String _result5 = getXcapConflictErrorMessage();
                        reply.writeNoException();
                        reply.writeString(_result5);
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
        private static class Proxy implements IMtkImsUt {
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

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public void setListener(IMtkImsUtListener listener) throws RemoteException {
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

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public String getUtIMPUFromNetwork() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public int queryCallForwardInTimeSlot(int condition) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(condition);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public int updateCallForwardInTimeSlot(int action, int condition, String number, int timeSeconds, long[] timeSlot) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(action);
                    _data.writeInt(condition);
                    _data.writeString(number);
                    _data.writeInt(timeSeconds);
                    _data.writeLongArray(timeSlot);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public int updateCallBarringForServiceClass(String password, int cbType, int action, String[] barrList, int serviceClass) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    _data.writeInt(cbType);
                    _data.writeInt(action);
                    _data.writeStringArray(barrList);
                    _data.writeInt(serviceClass);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public void processECT(Message result, Messenger target) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (result != null) {
                        _data.writeInt(1);
                        result.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (target != null) {
                        _data.writeInt(1);
                        target.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public boolean isSupportCFT() throws RemoteException {
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

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public void setupXcapUserAgentString(String userAgent) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(userAgent);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsUt
            public String getXcapConflictErrorMessage() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
