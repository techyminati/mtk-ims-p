package com.mediatek.ims.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mediatek.ims.MtkImsCallForwardInfo;
import com.mediatek.ims.internal.IMtkImsUt;
/* loaded from: classes.dex */
public interface IMtkImsUtListener extends IInterface {
    void utConfigurationCallForwardInTimeSlotQueried(IMtkImsUt iMtkImsUt, int i, MtkImsCallForwardInfo[] mtkImsCallForwardInfoArr) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMtkImsUtListener {
        private static final String DESCRIPTOR = "com.mediatek.ims.internal.IMtkImsUtListener";
        static final int TRANSACTION_utConfigurationCallForwardInTimeSlotQueried = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMtkImsUtListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin == null || !(iin instanceof IMtkImsUtListener)) {
                return new Proxy(obj);
            }
            return (IMtkImsUtListener) iin;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                IMtkImsUt _arg0 = IMtkImsUt.Stub.asInterface(data.readStrongBinder());
                int _arg1 = data.readInt();
                MtkImsCallForwardInfo[] _arg2 = (MtkImsCallForwardInfo[]) data.createTypedArray(MtkImsCallForwardInfo.CREATOR);
                utConfigurationCallForwardInTimeSlotQueried(_arg0, _arg1, _arg2);
                reply.writeNoException();
                return true;
            } else if (code != 1598968902) {
                return super.onTransact(code, data, reply, flags);
            } else {
                reply.writeString(DESCRIPTOR);
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IMtkImsUtListener {
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

            @Override // com.mediatek.ims.internal.IMtkImsUtListener
            public void utConfigurationCallForwardInTimeSlotQueried(IMtkImsUt ut, int id, MtkImsCallForwardInfo[] cfInfo) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(ut != null ? ut.asBinder() : null);
                    _data.writeInt(id);
                    _data.writeTypedArray(cfInfo, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }
    }
}
