package com.mediatek.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsReasonInfo;
import com.mediatek.ims.internal.IMtkImsCallSession;
/* loaded from: classes.dex */
public interface IMtkImsCallSessionListener extends IInterface {
    void callSessionDeviceSwitchFailed(IMtkImsCallSession iMtkImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException;

    void callSessionDeviceSwitched(IMtkImsCallSession iMtkImsCallSession) throws RemoteException;

    void callSessionMergeComplete(IMtkImsCallSession iMtkImsCallSession) throws RemoteException;

    void callSessionMergeStarted(IMtkImsCallSession iMtkImsCallSession, IMtkImsCallSession iMtkImsCallSession2, ImsCallProfile imsCallProfile) throws RemoteException;

    void callSessionRedialEcc(IMtkImsCallSession iMtkImsCallSession) throws RemoteException;

    void callSessionRttEventReceived(IMtkImsCallSession iMtkImsCallSession, int i) throws RemoteException;

    void callSessionTextCapabilityChanged(IMtkImsCallSession iMtkImsCallSession, int i, int i2, int i3, int i4) throws RemoteException;

    void callSessionTransferFailed(IMtkImsCallSession iMtkImsCallSession, ImsReasonInfo imsReasonInfo) throws RemoteException;

    void callSessionTransferred(IMtkImsCallSession iMtkImsCallSession) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMtkImsCallSessionListener {
        private static final String DESCRIPTOR = "com.mediatek.ims.internal.IMtkImsCallSessionListener";
        static final int TRANSACTION_callSessionDeviceSwitchFailed = 8;
        static final int TRANSACTION_callSessionDeviceSwitched = 7;
        static final int TRANSACTION_callSessionMergeComplete = 6;
        static final int TRANSACTION_callSessionMergeStarted = 5;
        static final int TRANSACTION_callSessionRedialEcc = 9;
        static final int TRANSACTION_callSessionRttEventReceived = 4;
        static final int TRANSACTION_callSessionTextCapabilityChanged = 3;
        static final int TRANSACTION_callSessionTransferFailed = 2;
        static final int TRANSACTION_callSessionTransferred = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMtkImsCallSessionListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMtkImsCallSessionListener)) {
                return new Proxy(obj);
            }
            return (IMtkImsCallSessionListener) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code != 1598968902) {
                ImsReasonInfo _arg1 = null;
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg0 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        callSessionTransferred(_arg0);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg02 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg1 = (ImsReasonInfo) ImsReasonInfo.CREATOR.createFromParcel(data);
                        }
                        callSessionTransferFailed(_arg02, _arg1);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg03 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        int _arg12 = data.readInt();
                        int _arg2 = data.readInt();
                        int _arg3 = data.readInt();
                        int _arg4 = data.readInt();
                        callSessionTextCapabilityChanged(_arg03, _arg12, _arg2, _arg3, _arg4);
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg04 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        callSessionRttEventReceived(_arg04, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg05 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        IMtkImsCallSession _arg13 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg1 = (ImsCallProfile) ImsCallProfile.CREATOR.createFromParcel(data);
                        }
                        callSessionMergeStarted(_arg05, _arg13, _arg1);
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg06 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        callSessionMergeComplete(_arg06);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg07 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        callSessionDeviceSwitched(_arg07);
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg08 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        if (data.readInt() != 0) {
                            _arg1 = (ImsReasonInfo) ImsReasonInfo.CREATOR.createFromParcel(data);
                        }
                        callSessionDeviceSwitchFailed(_arg08, _arg1);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        IMtkImsCallSession _arg09 = IMtkImsCallSession.Stub.asInterface(data.readStrongBinder());
                        callSessionRedialEcc(_arg09);
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

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IMtkImsCallSessionListener {
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

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionTransferred(IMtkImsCallSession session) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionTransferFailed(IMtkImsCallSession session, ImsReasonInfo reasonInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    if (reasonInfo != null) {
                        _data.writeInt(1);
                        reasonInfo.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionTextCapabilityChanged(IMtkImsCallSession session, int localCapability, int remoteCapability, int localTextStatus, int realRemoteCapability) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    _data.writeInt(localCapability);
                    _data.writeInt(remoteCapability);
                    _data.writeInt(localTextStatus);
                    _data.writeInt(realRemoteCapability);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionRttEventReceived(IMtkImsCallSession session, int event) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    _data.writeInt(event);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionMergeStarted(IMtkImsCallSession session, IMtkImsCallSession newSession, ImsCallProfile profile) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    IBinder iBinder = null;
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    if (newSession != null) {
                        iBinder = newSession.asBinder();
                    }
                    _data.writeStrongBinder(iBinder);
                    if (profile != null) {
                        _data.writeInt(1);
                        profile.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionMergeComplete(IMtkImsCallSession session) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionDeviceSwitched(IMtkImsCallSession session) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionDeviceSwitchFailed(IMtkImsCallSession session, ImsReasonInfo reasonInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    if (reasonInfo != null) {
                        _data.writeInt(1);
                        reasonInfo.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsCallSessionListener
            public void callSessionRedialEcc(IMtkImsCallSession session) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(session != null ? session.asBinder() : null);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
