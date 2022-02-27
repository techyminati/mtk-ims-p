package com.mediatek.common.multiwindow;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mediatek.common.multiwindow.IMWAmsCallback;
import com.mediatek.common.multiwindow.IMWSystemUiCallback;
import com.mediatek.common.multiwindow.IMWWmsCallback;
import java.util.List;
/* loaded from: classes.dex */
public interface IMultiWindowManager extends IInterface {
    void activityCreated(IBinder iBinder) throws RemoteException;

    void addConfigNotChangePkg(String str) throws RemoteException;

    void addDisableFloatPkg(String str) throws RemoteException;

    void addMiniMaxRestartPkg(String str) throws RemoteException;

    int appErrorHandling(String str, boolean z, boolean z2) throws RemoteException;

    void closeWindow(IBinder iBinder) throws RemoteException;

    void enableFocusedFrame(boolean z) throws RemoteException;

    List<String> getDisableFloatComponentList() throws RemoteException;

    List<String> getDisableFloatPkgList() throws RemoteException;

    boolean isFloatingStack(int i) throws RemoteException;

    boolean isInMiniMax(int i) throws RemoteException;

    boolean isStickStack(int i) throws RemoteException;

    boolean isSticky(IBinder iBinder) throws RemoteException;

    boolean matchConfigChangeList(String str) throws RemoteException;

    boolean matchConfigNotChangeList(String str) throws RemoteException;

    boolean matchDisableFloatActivityList(String str) throws RemoteException;

    boolean matchDisableFloatPkgList(String str) throws RemoteException;

    boolean matchDisableFloatWinList(String str) throws RemoteException;

    boolean matchMinimaxRestartList(String str) throws RemoteException;

    void miniMaxTask(int i) throws RemoteException;

    void moveActivityTaskToFront(IBinder iBinder) throws RemoteException;

    void moveFloatingWindow(int i, int i2) throws RemoteException;

    void resizeFloatingWindow(int i, int i2, int i3) throws RemoteException;

    void restoreWindow(IBinder iBinder, boolean z) throws RemoteException;

    void setAMSCallback(IMWAmsCallback iMWAmsCallback) throws RemoteException;

    void setFloatingStack(int i) throws RemoteException;

    void setSystemUiCallback(IMWSystemUiCallback iMWSystemUiCallback) throws RemoteException;

    void setWMSCallback(IMWWmsCallback iMWWmsCallback) throws RemoteException;

    void showRestoreButton(boolean z) throws RemoteException;

    void stickWindow(IBinder iBinder, boolean z) throws RemoteException;

    void taskAdded(int i) throws RemoteException;

    void taskRemoved(int i) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMultiWindowManager {
        private static final String DESCRIPTOR = "com.mediatek.common.multiwindow.IMultiWindowManager";
        static final int TRANSACTION_activityCreated = 30;
        static final int TRANSACTION_addConfigNotChangePkg = 26;
        static final int TRANSACTION_addDisableFloatPkg = 25;
        static final int TRANSACTION_addMiniMaxRestartPkg = 27;
        static final int TRANSACTION_appErrorHandling = 28;
        static final int TRANSACTION_closeWindow = 2;
        static final int TRANSACTION_enableFocusedFrame = 14;
        static final int TRANSACTION_getDisableFloatComponentList = 22;
        static final int TRANSACTION_getDisableFloatPkgList = 21;
        static final int TRANSACTION_isFloatingStack = 7;
        static final int TRANSACTION_isInMiniMax = 11;
        static final int TRANSACTION_isStickStack = 10;
        static final int TRANSACTION_isSticky = 29;
        static final int TRANSACTION_matchConfigChangeList = 24;
        static final int TRANSACTION_matchConfigNotChangeList = 17;
        static final int TRANSACTION_matchDisableFloatActivityList = 19;
        static final int TRANSACTION_matchDisableFloatPkgList = 18;
        static final int TRANSACTION_matchDisableFloatWinList = 20;
        static final int TRANSACTION_matchMinimaxRestartList = 23;
        static final int TRANSACTION_miniMaxTask = 15;
        static final int TRANSACTION_moveActivityTaskToFront = 1;
        static final int TRANSACTION_moveFloatingWindow = 12;
        static final int TRANSACTION_resizeFloatingWindow = 13;
        static final int TRANSACTION_restoreWindow = 3;
        static final int TRANSACTION_setAMSCallback = 4;
        static final int TRANSACTION_setFloatingStack = 8;
        static final int TRANSACTION_setSystemUiCallback = 5;
        static final int TRANSACTION_setWMSCallback = 9;
        static final int TRANSACTION_showRestoreButton = 16;
        static final int TRANSACTION_stickWindow = 6;
        static final int TRANSACTION_taskAdded = 31;
        static final int TRANSACTION_taskRemoved = 32;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMultiWindowManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMultiWindowManager)) {
                return new Proxy(obj);
            }
            return (IMultiWindowManager) iin;
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
                        IBinder _arg0 = data.readStrongBinder();
                        moveActivityTaskToFront(_arg0);
                        reply.writeNoException();
                        return true;
                    case 2:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder _arg02 = data.readStrongBinder();
                        closeWindow(_arg02);
                        reply.writeNoException();
                        return true;
                    case 3:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder _arg03 = data.readStrongBinder();
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        restoreWindow(_arg03, _arg2);
                        reply.writeNoException();
                        return true;
                    case 4:
                        data.enforceInterface(DESCRIPTOR);
                        IMWAmsCallback _arg04 = IMWAmsCallback.Stub.asInterface(data.readStrongBinder());
                        setAMSCallback(_arg04);
                        reply.writeNoException();
                        return true;
                    case 5:
                        data.enforceInterface(DESCRIPTOR);
                        IMWSystemUiCallback _arg05 = IMWSystemUiCallback.Stub.asInterface(data.readStrongBinder());
                        setSystemUiCallback(_arg05);
                        reply.writeNoException();
                        return true;
                    case 6:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder _arg06 = data.readStrongBinder();
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        stickWindow(_arg06, _arg2);
                        reply.writeNoException();
                        return true;
                    case 7:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg07 = data.readInt();
                        boolean isFloatingStack = isFloatingStack(_arg07);
                        reply.writeNoException();
                        reply.writeInt(isFloatingStack ? 1 : 0);
                        return true;
                    case 8:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg08 = data.readInt();
                        setFloatingStack(_arg08);
                        reply.writeNoException();
                        return true;
                    case 9:
                        data.enforceInterface(DESCRIPTOR);
                        IMWWmsCallback _arg09 = IMWWmsCallback.Stub.asInterface(data.readStrongBinder());
                        setWMSCallback(_arg09);
                        reply.writeNoException();
                        return true;
                    case 10:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg010 = data.readInt();
                        boolean isStickStack = isStickStack(_arg010);
                        reply.writeNoException();
                        reply.writeInt(isStickStack ? 1 : 0);
                        return true;
                    case 11:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg011 = data.readInt();
                        boolean isInMiniMax = isInMiniMax(_arg011);
                        reply.writeNoException();
                        reply.writeInt(isInMiniMax ? 1 : 0);
                        return true;
                    case 12:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg012 = data.readInt();
                        int _arg1 = data.readInt();
                        moveFloatingWindow(_arg012, _arg1);
                        reply.writeNoException();
                        return true;
                    case 13:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg013 = data.readInt();
                        int _arg12 = data.readInt();
                        resizeFloatingWindow(_arg013, _arg12, data.readInt());
                        reply.writeNoException();
                        return true;
                    case 14:
                        data.enforceInterface(DESCRIPTOR);
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        enableFocusedFrame(_arg2);
                        reply.writeNoException();
                        return true;
                    case 15:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg014 = data.readInt();
                        miniMaxTask(_arg014);
                        reply.writeNoException();
                        return true;
                    case 16:
                        data.enforceInterface(DESCRIPTOR);
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        showRestoreButton(_arg2);
                        reply.writeNoException();
                        return true;
                    case 17:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg015 = data.readString();
                        boolean matchConfigNotChangeList = matchConfigNotChangeList(_arg015);
                        reply.writeNoException();
                        reply.writeInt(matchConfigNotChangeList ? 1 : 0);
                        return true;
                    case 18:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg016 = data.readString();
                        boolean matchDisableFloatPkgList = matchDisableFloatPkgList(_arg016);
                        reply.writeNoException();
                        reply.writeInt(matchDisableFloatPkgList ? 1 : 0);
                        return true;
                    case 19:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg017 = data.readString();
                        boolean matchDisableFloatActivityList = matchDisableFloatActivityList(_arg017);
                        reply.writeNoException();
                        reply.writeInt(matchDisableFloatActivityList ? 1 : 0);
                        return true;
                    case 20:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg018 = data.readString();
                        boolean matchDisableFloatWinList = matchDisableFloatWinList(_arg018);
                        reply.writeNoException();
                        reply.writeInt(matchDisableFloatWinList ? 1 : 0);
                        return true;
                    case 21:
                        data.enforceInterface(DESCRIPTOR);
                        List<String> _result = getDisableFloatPkgList();
                        reply.writeNoException();
                        reply.writeStringList(_result);
                        return true;
                    case 22:
                        data.enforceInterface(DESCRIPTOR);
                        List<String> _result2 = getDisableFloatComponentList();
                        reply.writeNoException();
                        reply.writeStringList(_result2);
                        return true;
                    case 23:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg019 = data.readString();
                        boolean matchMinimaxRestartList = matchMinimaxRestartList(_arg019);
                        reply.writeNoException();
                        reply.writeInt(matchMinimaxRestartList ? 1 : 0);
                        return true;
                    case 24:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg020 = data.readString();
                        boolean matchConfigChangeList = matchConfigChangeList(_arg020);
                        reply.writeNoException();
                        reply.writeInt(matchConfigChangeList ? 1 : 0);
                        return true;
                    case 25:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg021 = data.readString();
                        addDisableFloatPkg(_arg021);
                        reply.writeNoException();
                        return true;
                    case 26:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg022 = data.readString();
                        addConfigNotChangePkg(_arg022);
                        reply.writeNoException();
                        return true;
                    case 27:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg023 = data.readString();
                        addMiniMaxRestartPkg(_arg023);
                        reply.writeNoException();
                        return true;
                    case 28:
                        data.enforceInterface(DESCRIPTOR);
                        String _arg024 = data.readString();
                        boolean _arg13 = data.readInt() != 0;
                        if (data.readInt() != 0) {
                            _arg2 = true;
                        }
                        int _result3 = appErrorHandling(_arg024, _arg13, _arg2);
                        reply.writeNoException();
                        reply.writeInt(_result3);
                        return true;
                    case 29:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder _arg025 = data.readStrongBinder();
                        boolean isSticky = isSticky(_arg025);
                        reply.writeNoException();
                        reply.writeInt(isSticky ? 1 : 0);
                        return true;
                    case 30:
                        data.enforceInterface(DESCRIPTOR);
                        IBinder _arg026 = data.readStrongBinder();
                        activityCreated(_arg026);
                        reply.writeNoException();
                        return true;
                    case 31:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg027 = data.readInt();
                        taskAdded(_arg027);
                        reply.writeNoException();
                        return true;
                    case 32:
                        data.enforceInterface(DESCRIPTOR);
                        int _arg028 = data.readInt();
                        taskRemoved(_arg028);
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
        private static class Proxy implements IMultiWindowManager {
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void moveActivityTaskToFront(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void closeWindow(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void restoreWindow(IBinder token, boolean toMax) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(toMax ? 1 : 0);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void setAMSCallback(IMWAmsCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void setSystemUiCallback(IMWSystemUiCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void stickWindow(IBinder token, boolean isSticky) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    _data.writeInt(isSticky ? 1 : 0);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean isFloatingStack(int stackId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(stackId);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void setFloatingStack(int stackId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(stackId);
                    this.mRemote.transact(8, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void setWMSCallback(IMWWmsCallback cb) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    this.mRemote.transact(9, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean isStickStack(int stackId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(stackId);
                    boolean _result = false;
                    this.mRemote.transact(10, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean isInMiniMax(int taskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    boolean _result = false;
                    this.mRemote.transact(11, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void moveFloatingWindow(int disX, int disY) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(disX);
                    _data.writeInt(disY);
                    this.mRemote.transact(12, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void resizeFloatingWindow(int direction, int deltaX, int deltaY) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(direction);
                    _data.writeInt(deltaX);
                    _data.writeInt(deltaY);
                    this.mRemote.transact(13, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void enableFocusedFrame(boolean enable) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(enable ? 1 : 0);
                    this.mRemote.transact(14, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void miniMaxTask(int taskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    this.mRemote.transact(15, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void showRestoreButton(boolean flag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(flag ? 1 : 0);
                    this.mRemote.transact(16, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchConfigNotChangeList(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    boolean _result = false;
                    this.mRemote.transact(17, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchDisableFloatPkgList(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    boolean _result = false;
                    this.mRemote.transact(18, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchDisableFloatActivityList(String ActivityName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(ActivityName);
                    boolean _result = false;
                    this.mRemote.transact(19, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchDisableFloatWinList(String winName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(winName);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public List<String> getDisableFloatPkgList() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public List<String> getDisableFloatComponentList() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, _data, _reply, 0);
                    _reply.readException();
                    List<String> _result = _reply.createStringArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchMinimaxRestartList(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    boolean _result = false;
                    this.mRemote.transact(23, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean matchConfigChangeList(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    boolean _result = false;
                    this.mRemote.transact(24, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void addDisableFloatPkg(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(25, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void addConfigNotChangePkg(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(26, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void addMiniMaxRestartPkg(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    this.mRemote.transact(27, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public int appErrorHandling(String packageName, boolean inMaxOrRestore, boolean defaultChangeConfig) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(inMaxOrRestore ? 1 : 0);
                    _data.writeInt(defaultChangeConfig ? 1 : 0);
                    this.mRemote.transact(28, _data, _reply, 0);
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public boolean isSticky(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    boolean _result = false;
                    this.mRemote.transact(29, _data, _reply, 0);
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

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void activityCreated(IBinder token) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(token);
                    this.mRemote.transact(30, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void taskAdded(int taskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    this.mRemote.transact(31, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // com.mediatek.common.multiwindow.IMultiWindowManager
            public void taskRemoved(int taskId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(taskId);
                    this.mRemote.transact(32, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
