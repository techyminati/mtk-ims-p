package com.mediatek.common.voiceextension;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.mediatek.common.voiceextension.IVoiceExtCommandListener;
/* loaded from: classes.dex */
public interface IVoiceExtCommandManager extends IInterface {
    int createCommandSet(String str) throws RemoteException;

    int deleteCommandSet(String str) throws RemoteException;

    String getCommandSetSelected() throws RemoteException;

    String[] getCommandSets() throws RemoteException;

    String[] getCommands() throws RemoteException;

    int isCommandSetCreated(String str) throws RemoteException;

    void pauseRecognition() throws RemoteException;

    int registerListener(IVoiceExtCommandListener iVoiceExtCommandListener) throws RemoteException;

    void resumeRecognition() throws RemoteException;

    int selectCurrentCommandSet(String str) throws RemoteException;

    void setCommandsFile(ParcelFileDescriptor parcelFileDescriptor, int i, int i2) throws RemoteException;

    void setCommandsStrArray(String[] strArr) throws RemoteException;

    void startRecognition() throws RemoteException;

    void stopRecognition() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IVoiceExtCommandManager {
        private static final String DESCRIPTOR = "com.mediatek.common.voiceextension.IVoiceExtCommandManager";
        static final int TRANSACTION_createCommandSet = 1;
        static final int TRANSACTION_deleteCommandSet = 4;
        static final int TRANSACTION_getCommandSetSelected = 3;
        static final int TRANSACTION_getCommandSets = 10;
        static final int TRANSACTION_getCommands = 9;
        static final int TRANSACTION_isCommandSetCreated = 2;
        static final int TRANSACTION_pauseRecognition = 13;
        static final int TRANSACTION_registerListener = 8;
        static final int TRANSACTION_resumeRecognition = 14;
        static final int TRANSACTION_selectCurrentCommandSet = 5;
        static final int TRANSACTION_setCommandsFile = 7;
        static final int TRANSACTION_setCommandsStrArray = 6;
        static final int TRANSACTION_startRecognition = 11;
        static final int TRANSACTION_stopRecognition = 12;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoiceExtCommandManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IVoiceExtCommandManager)) {
                return new Proxy(obj);
            }
            return (IVoiceExtCommandManager) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            ParcelFileDescriptor _arg0;
            if (code != 1598968902) {
                switch (code) {
                    case 1:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg02 = data.readString();
                        int _result = createCommandSet(_arg02);
                        reply.writeNoException();
                        reply.writeInt(_result);
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg03 = data.readString();
                        int _result2 = isCommandSetCreated(_arg03);
                        reply.writeNoException();
                        reply.writeInt(_result2);
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        String _result3 = getCommandSetSelected();
                        reply.writeNoException();
                        reply.writeString(_result3);
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg04 = data.readString();
                        int _result4 = deleteCommandSet(_arg04);
                        reply.writeNoException();
                        reply.writeInt(_result4);
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg05 = data.readString();
                        int _result5 = selectCurrentCommandSet(_arg05);
                        reply.writeNoException();
                        reply.writeInt(_result5);
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _arg06 = data.createStringArray();
                        setCommandsStrArray(_arg06);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        if (data.readInt() != 0) {
                            _arg0 = (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(data);
                        } else {
                            _arg0 = null;
                        }
                        int _arg1 = data.readInt();
                        int _arg2 = data.readInt();
                        setCommandsFile(_arg0, _arg1, _arg2);
                        reply.writeNoException();
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        IVoiceExtCommandListener _arg07 = IVoiceExtCommandListener.Stub.asInterface(data.readStrongBinder());
                        int _result6 = registerListener(_arg07);
                        reply.writeNoException();
                        reply.writeInt(_result6);
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _result7 = getCommands();
                        reply.writeNoException();
                        reply.writeStringArray(_result7);
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        String[] _result8 = getCommandSets();
                        reply.writeNoException();
                        reply.writeStringArray(_result8);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        startRecognition();
                        reply.writeNoException();
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        stopRecognition();
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        pauseRecognition();
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        resumeRecognition();
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
        private static class Proxy implements IVoiceExtCommandManager {
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

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public int createCommandSet(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public int isCommandSetCreated(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public String getCommandSetSelected() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public int deleteCommandSet(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public int selectCurrentCommandSet(String name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(name);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void setCommandsStrArray(String[] commands) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(commands);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void setCommandsFile(ParcelFileDescriptor pFd, int offset, int length) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pFd != null) {
                        _data.writeInt(1);
                        pFd.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    _data.writeInt(offset);
                    _data.writeInt(length);
                    this.mRemote.transact(7, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public int registerListener(IVoiceExtCommandListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public String[] getCommands() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public String[] getCommandSets() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, _data, _reply, 0);
                    _reply.readException();
                    String[] _result = _reply.createStringArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void startRecognition() throws RemoteException {
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

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void stopRecognition() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void pauseRecognition() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.voiceextension.IVoiceExtCommandManager
            public void resumeRecognition() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
