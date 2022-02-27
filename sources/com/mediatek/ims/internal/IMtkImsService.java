package com.mediatek.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.aidl.IImsCallSessionListener;
import android.telephony.ims.aidl.IImsSmsListener;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.ims.internal.IImsUt;
import com.mediatek.gba.NafSessionKey;
import com.mediatek.ims.internal.IMtkImsCallSession;
import com.mediatek.ims.internal.IMtkImsConfig;
import com.mediatek.ims.internal.IMtkImsUt;
/* loaded from: classes.dex */
public interface IMtkImsService extends IInterface {
    void UpdateImsState(int i) throws RemoteException;

    void addImsSmsListener(int i, IImsSmsListener iImsSmsListener) throws RemoteException;

    IMtkImsCallSession createMtkCallSession(int i, ImsCallProfile imsCallProfile, IImsCallSessionListener iImsCallSessionListener, IImsCallSession iImsCallSession) throws RemoteException;

    void deregisterIms(int i) throws RemoteException;

    IMtkImsConfig getConfigInterfaceEx(int i) throws RemoteException;

    int getCurrentCallCount(int i) throws RemoteException;

    int[] getImsNetworkState(int i) throws RemoteException;

    int getImsRegUriType(int i) throws RemoteException;

    int getImsState(int i) throws RemoteException;

    int getModemMultiImsCount() throws RemoteException;

    IMtkImsUt getMtkUtInterface(int i) throws RemoteException;

    IMtkImsCallSession getPendingMtkCallSession(String str) throws RemoteException;

    IImsUt getUtInterface(int i) throws RemoteException;

    void hangupAllCall(int i) throws RemoteException;

    boolean isCameraAvailable() throws RemoteException;

    void registerProprietaryImsListener(int i, IImsRegistrationListener iImsRegistrationListener) throws RemoteException;

    NafSessionKey runGbaAuthentication(String str, byte[] bArr, boolean z, int i, int i2) throws RemoteException;

    void sendSms(int i, int i2, int i3, String str, String str2, boolean z, byte[] bArr) throws RemoteException;

    void setCallIndication(int i, String str, String str2, int i2, String str3, boolean z) throws RemoteException;

    void updateRadioState(int i, int i2) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMtkImsService {
        private static final String DESCRIPTOR = "com.mediatek.ims.internal.IMtkImsService";
        static final int TRANSACTION_UpdateImsState = 9;
        static final int TRANSACTION_addImsSmsListener = 17;
        static final int TRANSACTION_createMtkCallSession = 2;
        static final int TRANSACTION_deregisterIms = 7;
        static final int TRANSACTION_getConfigInterfaceEx = 10;
        static final int TRANSACTION_getCurrentCallCount = 15;
        static final int TRANSACTION_getImsNetworkState = 16;
        static final int TRANSACTION_getImsRegUriType = 5;
        static final int TRANSACTION_getImsState = 4;
        static final int TRANSACTION_getModemMultiImsCount = 14;
        static final int TRANSACTION_getMtkUtInterface = 12;
        static final int TRANSACTION_getPendingMtkCallSession = 3;
        static final int TRANSACTION_getUtInterface = 11;
        static final int TRANSACTION_hangupAllCall = 6;
        static final int TRANSACTION_isCameraAvailable = 20;
        static final int TRANSACTION_registerProprietaryImsListener = 19;
        static final int TRANSACTION_runGbaAuthentication = 13;
        static final int TRANSACTION_sendSms = 18;
        static final int TRANSACTION_setCallIndication = 1;
        static final int TRANSACTION_updateRadioState = 8;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMtkImsService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMtkImsService)) {
                return new Proxy(obj);
            }
            return (IMtkImsService) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            ImsCallProfile _arg1;
            if (code != 1598968902) {
                boolean _arg5 = false;
                IBinder iBinder = null;
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg0 = data.readInt();
                        String _arg12 = data.readString();
                        String _arg2 = data.readString();
                        int _arg3 = data.readInt();
                        String _arg4 = data.readString();
                        if (data.readInt() != 0) {
                            _arg5 = true;
                        }
                        setCallIndication(_arg0, _arg12, _arg2, _arg3, _arg4, _arg5);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg02 = data.readInt();
                        if (data.readInt() != 0) {
                            _arg1 = (ImsCallProfile) ImsCallProfile.CREATOR.createFromParcel(data);
                        } else {
                            _arg1 = null;
                        }
                        IImsCallSessionListener _arg22 = IImsCallSessionListener.Stub.asInterface(data.readStrongBinder());
                        IImsCallSession _arg32 = IImsCallSession.Stub.asInterface(data.readStrongBinder());
                        IMtkImsCallSession _result = createMtkCallSession(_arg02, _arg1, _arg22, _arg32);
                        reply.writeNoException();
                        if (_result != null) {
                            iBinder = _result.asBinder();
                        }
                        reply.writeStrongBinder(iBinder);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg03 = data.readString();
                        IMtkImsCallSession _result2 = getPendingMtkCallSession(_arg03);
                        reply.writeNoException();
                        if (_result2 != null) {
                            iBinder = _result2.asBinder();
                        }
                        reply.writeStrongBinder(iBinder);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg04 = data.readInt();
                        int _result3 = getImsState(_arg04);
                        reply.writeNoException();
                        reply.writeInt(_result3);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg05 = data.readInt();
                        int _result4 = getImsRegUriType(_arg05);
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg06 = data.readInt();
                        hangupAllCall(_arg06);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg07 = data.readInt();
                        deregisterIms(_arg07);
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg08 = data.readInt();
                        int _arg13 = data.readInt();
                        updateRadioState(_arg08, _arg13);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg09 = data.readInt();
                        UpdateImsState(_arg09);
                        reply.writeNoException();
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg010 = data.readInt();
                        IMtkImsConfig _result5 = getConfigInterfaceEx(_arg010);
                        reply.writeNoException();
                        if (_result5 != null) {
                            iBinder = _result5.asBinder();
                        }
                        reply.writeStrongBinder(iBinder);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg011 = data.readInt();
                        IImsUt _result6 = getUtInterface(_arg011);
                        reply.writeNoException();
                        if (_result6 != null) {
                            iBinder = _result6.asBinder();
                        }
                        reply.writeStrongBinder(iBinder);
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg012 = data.readInt();
                        IMtkImsUt _result7 = getMtkUtInterface(_arg012);
                        reply.writeNoException();
                        if (_result7 != null) {
                            iBinder = _result7.asBinder();
                        }
                        reply.writeStrongBinder(iBinder);
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg013 = data.readString();
                        byte[] _arg14 = data.createByteArray();
                        boolean _arg23 = data.readInt() != 0;
                        int _arg33 = data.readInt();
                        int _arg42 = data.readInt();
                        NafSessionKey _result8 = runGbaAuthentication(_arg013, _arg14, _arg23, _arg33, _arg42);
                        reply.writeNoException();
                        if (_result8 != null) {
                            reply.writeInt(1);
                            _result8.writeToParcel(reply, 1);
                        } else {
                            reply.writeInt(0);
                        }
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        int _result9 = getModemMultiImsCount();
                        reply.writeNoException();
                        reply.writeInt(_result9);
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg014 = data.readInt();
                        int _result10 = getCurrentCallCount(_arg014);
                        reply.writeNoException();
                        reply.writeInt(_result10);
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg015 = data.readInt();
                        int[] _result11 = getImsNetworkState(_arg015);
                        reply.writeNoException();
                        reply.writeIntArray(_result11);
                        return true;
                    case 17:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg016 = data.readInt();
                        IImsSmsListener _arg15 = IImsSmsListener.Stub.asInterface(data.readStrongBinder());
                        addImsSmsListener(_arg016, _arg15);
                        reply.writeNoException();
                        return true;
                    case 18:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg017 = data.readInt();
                        int _arg16 = data.readInt();
                        int _arg24 = data.readInt();
                        String _arg34 = data.readString();
                        String _arg43 = data.readString();
                        if (data.readInt() != 0) {
                            _arg5 = true;
                        }
                        byte[] _arg6 = data.createByteArray();
                        sendSms(_arg017, _arg16, _arg24, _arg34, _arg43, _arg5, _arg6);
                        reply.writeNoException();
                        return true;
                    case 19:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg018 = data.readInt();
                        IImsRegistrationListener _arg17 = IImsRegistrationListener.Stub.asInterface(data.readStrongBinder());
                        registerProprietaryImsListener(_arg018, _arg17);
                        reply.writeNoException();
                        return true;
                    case 20:
                        data.enforceInterface(DESCRIPTOR);
                        boolean isCameraAvailable = isCameraAvailable();
                        reply.writeNoException();
                        reply.writeInt(isCameraAvailable ? 1 : 0);
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
        private static class Proxy implements IMtkImsService {
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

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void setCallIndication(int serviceId, String callId, String callNum, int seqNum, String toNumber, boolean isAllow) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serviceId);
                    _data.writeString(callId);
                    _data.writeString(callNum);
                    _data.writeInt(seqNum);
                    _data.writeString(toNumber);
                    _data.writeInt(isAllow ? 1 : 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public IMtkImsCallSession createMtkCallSession(int serviceId, ImsCallProfile profile, IImsCallSessionListener listener, IImsCallSession aospCallSessionImpl) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serviceId);
                    if (profile != null) {
                        _data.writeInt(1);
                        profile.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    IBinder iBinder = null;
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (aospCallSessionImpl != null) {
                        iBinder = aospCallSessionImpl.asBinder();
                    }
                    _data.writeStrongBinder(iBinder);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    IMtkImsCallSession _result = IMtkImsCallSession.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public IMtkImsCallSession getPendingMtkCallSession(String callId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(callId);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    IMtkImsCallSession _result = IMtkImsCallSession.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public int getImsState(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public int getImsRegUriType(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void hangupAllCall(int serviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serviceId);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void deregisterIms(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void updateRadioState(int radioState, int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(radioState);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void UpdateImsState(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public IMtkImsConfig getConfigInterfaceEx(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    IMtkImsConfig _result = IMtkImsConfig.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public IImsUt getUtInterface(int serviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serviceId);
                    this.mRemote.transact(11, _data, _reply, 0);
                    _reply.readException();
                    IImsUt _result = IImsUt.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public IMtkImsUt getMtkUtInterface(int serviceId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(serviceId);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                    IMtkImsUt _result = IMtkImsUt.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public NafSessionKey runGbaAuthentication(String nafFqdn, byte[] nafSecureProtocolId, boolean forceRun, int netId, int phoneId) throws RemoteException {
                NafSessionKey _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(nafFqdn);
                    _data.writeByteArray(nafSecureProtocolId);
                    _data.writeInt(forceRun ? 1 : 0);
                    _data.writeInt(netId);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = NafSessionKey.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public int getModemMultiImsCount() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public int getCurrentCallCount(int phoneId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public int[] getImsNetworkState(int capability) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(capability);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void addImsSmsListener(int phoneId, IImsSmsListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(17, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void sendSms(int phoneId, int token, int messageRef, String format, String smsc, boolean isRetry, byte[] pdu) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeInt(token);
                    _data.writeInt(messageRef);
                    _data.writeString(format);
                    _data.writeString(smsc);
                    _data.writeInt(isRetry ? 1 : 0);
                    _data.writeByteArray(pdu);
                    this.mRemote.transact(18, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public void registerProprietaryImsListener(int phoneId, IImsRegistrationListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(phoneId);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(19, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.ims.internal.IMtkImsService
            public boolean isCameraAvailable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _result = false;
                    this.mRemote.transact(20, _data, _reply, 0);
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
        }
    }
}
