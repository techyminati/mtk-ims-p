package vendor.mediatek.hardware.radio.V3_5;

import android.hardware.radio.V1_0.ISapCallback;
import android.hidl.base.V1_0.DebugInfo;
import android.hidl.base.V1_0.IBase;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes.dex */
public interface ISap extends vendor.mediatek.hardware.radio.V3_4.ISap {
    public static final String kInterfaceName = "vendor.mediatek.hardware.radio@3.5::ISap";

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    @Override // vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static ISap asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof ISap)) {
            return (ISap) iface;
        }
        ISap proxy = new Proxy(binder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                String descriptor = it.next();
                if (descriptor.equals(kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    static ISap castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static ISap getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static ISap getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static ISap getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static ISap getService() throws RemoteException {
        return getService("default");
    }

    /* loaded from: classes.dex */
    public static final class Proxy implements ISap {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.mediatek.hardware.radio@3.5::ISap]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void setCallback(ISapCallback sapCallback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeStrongBinder(sapCallback == null ? null : sapCallback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void connectReq(int token, int maxMsgSize) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            _hidl_request.writeInt32(maxMsgSize);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void disconnectReq(int token) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void apduReq(int token, int type, ArrayList<Byte> command) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            _hidl_request.writeInt32(type);
            _hidl_request.writeInt8Vector(command);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void transferAtrReq(int token) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void powerReq(int token, boolean state) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            _hidl_request.writeBool(state);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void resetSimReq(int token) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void transferCardReaderStatusReq(int token) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.radio.V1_0.ISap
        public void setTransferProtocolReq(int token, int transferProtocol) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.radio.V1_0.ISap.kInterfaceName);
            _hidl_request.writeInt32(token);
            _hidl_request.writeInt32(transferProtocol);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256067662, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<String> _hidl_out_descriptors = _hidl_reply.readStringVector();
                return _hidl_out_descriptors;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public String interfaceDescriptor() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256136003, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_descriptor = _hidl_reply.readString();
                return _hidl_out_descriptor;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256398152, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<byte[]> _hidl_out_hashchain = new ArrayList<>();
                HwBlob _hidl_blob = _hidl_reply.readBuffer(16L);
                int _hidl_vec_size = _hidl_blob.getInt32(8L);
                HwBlob childBlob = _hidl_reply.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
                _hidl_out_hashchain.clear();
                for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                    byte[] _hidl_vec_element = new byte[32];
                    long _hidl_array_offset_1 = _hidl_index_0 * 32;
                    childBlob.copyToInt8Array(_hidl_array_offset_1, _hidl_vec_element, 32);
                    _hidl_out_hashchain.add(_hidl_vec_element);
                }
                return _hidl_out_hashchain;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public void setHALInstrumentation() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256462420, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public void ping() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256921159, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257049926, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                DebugInfo _hidl_out_info = new DebugInfo();
                _hidl_out_info.readFromParcel(_hidl_reply);
                return _hidl_out_info;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257120595, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends HwBinder implements ISap {
        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(ISap.kInterfaceName, vendor.mediatek.hardware.radio.V3_4.ISap.kInterfaceName, vendor.mediatek.hardware.radio.V3_3.ISap.kInterfaceName, vendor.mediatek.hardware.radio.V3_2.ISap.kInterfaceName, vendor.mediatek.hardware.radio.V3_1.ISap.kInterfaceName, vendor.mediatek.hardware.radio.V3_0.ISap.kInterfaceName, android.hardware.radio.V1_2.ISap.kInterfaceName, android.hardware.radio.V1_1.ISap.kInterfaceName, android.hardware.radio.V1_0.ISap.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return ISap.kInterfaceName;
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-8, -88, 58, -123, 6, -41, 95, 62, 73, 113, -29, 63, 118, 114, 101, -79, 107, -80, -16, -66, 92, 22, -123, 111, 64, -15, 30, -101, -100, 120, 35, -126}, new byte[]{-105, -14, -41, -78, 112, -22, -50, 103, 101, 35, 40, 37, -87, -64, -120, 59, 14, 19, 5, 116, -109, -9, -105, -38, 110, -22, 15, 31, 13, -90, -76, 72}, new byte[]{0, -41, 23, -52, 4, 6, 51, 85, 36, -71, -63, -28, 96, -17, 92, -71, -88, -38, -121, -120, 86, 0, 29, -68, -106, -78, -53, -59, -115, -10, 106, 28}, new byte[]{87, 48, 33, 15, 36, 92, 52, -68, 81, -34, 31, -13, 55, 0, 45, 8, 83, 82, -89, -96, 122, 120, -110, -64, 51, -53, 98, -92, 78, 90, -62, -112}, new byte[]{67, -67, 44, 88, -49, -70, 65, -28, 6, -55, 55, 92, 83, -69, -70, -112, -10, 31, 115, 59, -1, -65, -125, -49, -10, -118, 61, 106, -123, -77, Byte.MIN_VALUE, -117}, new byte[]{-103, -55, 62, 63, 48, 60, 92, 76, 8, -118, 32, -10, 91, -30, 71, -127, 106, 89, -65, 55, 10, 101, -58, 123, 57, 71, -23, 98, 105, -113, -2, -70}, new byte[]{45, -122, -110, -105, -108, 121, 94, 92, 112, -12, -3, -75, 7, 52, -123, -3, 5, -125, 92, -100, 111, 73, 97, 22, 104, 124, 61, -97, 50, -26, -33, 62}, new byte[]{-7, 108, -68, 89, -33, -31, 108, -115, 12, 42, 126, 6, -37, 36, -40, 115, -118, 99, 40, -74, -23, 15, 123, -114, 22, 64, -22, 43, 70, 0, -34, -67}, new byte[]{-34, 58, -71, -9, 59, 16, 115, -51, 103, 123, 25, -40, -122, -5, -110, 126, -109, -127, -77, 1, 97, -89, 4, 113, 45, 43, 48, -8, 117, -121, 63, 92}, new byte[]{-67, -38, -74, 24, 77, 122, 52, 109, -90, -96, 125, -64, -126, -116, -15, -102, 105, 111, 76, -86, 54, 17, -59, 31, 46, 20, 86, 90, 20, -76, 15, -39}));
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.os.IHwBinder, android.hardware.radio.V1_0.IRadio, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.mediatek.hardware.radio.V3_5.ISap, vendor.mediatek.hardware.radio.V3_4.ISap, vendor.mediatek.hardware.radio.V3_3.ISap, vendor.mediatek.hardware.radio.V3_2.ISap, vendor.mediatek.hardware.radio.V3_1.ISap, vendor.mediatek.hardware.radio.V3_0.ISap, android.hardware.radio.V1_2.ISap, android.hardware.radio.V1_1.ISap, android.hardware.radio.V1_0.ISap, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.IHwBinder, android.hardware.radio.V1_0.IRadio, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String descriptor) {
            if (ISap.kInterfaceName.equals(descriptor)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String serviceName) throws RemoteException {
            registerService(serviceName);
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        @Override // android.os.HwBinder
        public void onTransact(int _hidl_code, HwParcel _hidl_request, HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            int _hidl_index_0 = 0;
            boolean _hidl_is_oneway = true;
            switch (_hidl_code) {
                case 1:
                    if ((_hidl_flags & 1) == 0) {
                        _hidl_is_oneway = false;
                    }
                    if (_hidl_is_oneway) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    ISapCallback sapCallback = ISapCallback.asInterface(_hidl_request.readStrongBinder());
                    setCallback(sapCallback);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.send();
                    return;
                case 2:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token = _hidl_request.readInt32();
                    int maxMsgSize = _hidl_request.readInt32();
                    connectReq(token, maxMsgSize);
                    return;
                case 3:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token2 = _hidl_request.readInt32();
                    disconnectReq(token2);
                    return;
                case 4:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token3 = _hidl_request.readInt32();
                    int type = _hidl_request.readInt32();
                    ArrayList<Byte> command = _hidl_request.readInt8Vector();
                    apduReq(token3, type, command);
                    return;
                case 5:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token4 = _hidl_request.readInt32();
                    transferAtrReq(token4);
                    return;
                case 6:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token5 = _hidl_request.readInt32();
                    boolean state = _hidl_request.readBool();
                    powerReq(token5, state);
                    return;
                case 7:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token6 = _hidl_request.readInt32();
                    resetSimReq(token6);
                    return;
                case 8:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token7 = _hidl_request.readInt32();
                    transferCardReaderStatusReq(token7);
                    return;
                case 9:
                    if ((_hidl_flags & 1) != 0) {
                        _hidl_index_0 = 1;
                    }
                    if (_hidl_index_0 != 1) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.radio.V1_0.ISap.kInterfaceName);
                    int token8 = _hidl_request.readInt32();
                    int transferProtocol = _hidl_request.readInt32();
                    setTransferProtocolReq(token8, transferProtocol);
                    return;
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<String> _hidl_out_descriptors = interfaceChain();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeStringVector(_hidl_out_descriptors);
                            _hidl_reply.send();
                            return;
                        case 256131655:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.send();
                            return;
                        case 256136003:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            String _hidl_out_descriptor = interfaceDescriptor();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeString(_hidl_out_descriptor);
                            _hidl_reply.send();
                            return;
                        case 256398152:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                            _hidl_reply.writeStatus(0);
                            HwBlob _hidl_blob = new HwBlob(16);
                            int _hidl_vec_size = _hidl_out_hashchain.size();
                            _hidl_blob.putInt32(8L, _hidl_vec_size);
                            _hidl_blob.putBool(12L, false);
                            HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                            while (_hidl_index_0 < _hidl_vec_size) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_out_hashchain.get(_hidl_index_0));
                                _hidl_index_0++;
                            }
                            _hidl_blob.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_index_0 = 1;
                            }
                            if (_hidl_index_0 != 1) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            setHALInstrumentation();
                            return;
                        case 256660548:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_index_0 = 1;
                            }
                            if (_hidl_index_0 != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ping();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.send();
                            return;
                        case 257049926:
                            if ((_hidl_flags & 1) == 0) {
                                _hidl_is_oneway = false;
                            }
                            if (_hidl_is_oneway) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            DebugInfo _hidl_out_info = getDebugInfo();
                            _hidl_reply.writeStatus(0);
                            _hidl_out_info.writeToParcel(_hidl_reply);
                            _hidl_reply.send();
                            return;
                        case 257120595:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_index_0 = 1;
                            }
                            if (_hidl_index_0 != 1) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            notifySyspropsChanged();
                            return;
                        case 257250372:
                            if ((_hidl_flags & 1) != 0) {
                                _hidl_index_0 = 1;
                            }
                            if (_hidl_index_0 != 0) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }
    }
}