package com.mediatek.common.voicecommand;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface IVoiceTrainingEnrollmentService extends IInterface {
    boolean enrollSoundModel(int i, int i2, String str, int i3) throws RemoteException;

    boolean unEnrollSoundModel() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IVoiceTrainingEnrollmentService {
        private static final String DESCRIPTOR = "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService";
        static final int TRANSACTION_enrollSoundModel = 1;
        static final int TRANSACTION_unEnrollSoundModel = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoiceTrainingEnrollmentService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IVoiceTrainingEnrollmentService)) {
                return new Proxy(obj);
            }
            return (IVoiceTrainingEnrollmentService) iin;
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
                        int _arg1 = data.readInt();
                        String _arg2 = data.readString();
                        int _arg3 = data.readInt();
                        boolean enrollSoundModel = enrollSoundModel(_arg0, _arg1, _arg2, _arg3);
                        reply.writeNoException();
                        reply.writeInt(enrollSoundModel ? 1 : 0);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        boolean unEnrollSoundModel = unEnrollSoundModel();
                        reply.writeNoException();
                        reply.writeInt(unEnrollSoundModel ? 1 : 0);
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
        private static class Proxy implements IVoiceTrainingEnrollmentService {
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

            @Override // com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService
            public boolean enrollSoundModel(int traningMode, int commandId, String patternPath, int user) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(traningMode);
                    _data.writeInt(commandId);
                    _data.writeString(patternPath);
                    _data.writeInt(user);
                    boolean _result = false;
                    this.mRemote.transact(1, _data, _reply, 0);
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

            @Override // com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService
            public boolean unEnrollSoundModel() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _result = false;
                    this.mRemote.transact(2, _data, _reply, 0);
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
