package com.mediatek.ims.internal;

import android.telephony.Rlog;
import com.mediatek.ims.ImsAdapter;
import com.mediatek.ims.VaConstants;
import com.mediatek.internal.telephony.MtkPhoneConstants;
/* loaded from: classes.dex */
public class DataDispatcherUtil {
    private static final String TAG = DataDispatcherUtil.class.getSimpleName();

    public ImsBearerRequest deCodeEvent(ImsAdapter.VaEvent event) {
        int requestID = event.getRequestID();
        if (requestID == 900008) {
            ImsBearerRequest request = deCodeNwRequest(event);
            return request;
        } else if (requestID == 900011) {
            ImsBearerRequest request2 = deCodeNwRelease(event);
            return request2;
        } else if (requestID != 900403) {
            return null;
        } else {
            ImsBearerRequest request3 = deCodePcscfDiscovery(event);
            return request3;
        }
    }

    private ImsBearerRequest deCodeNwRequest(ImsAdapter.VaEvent event) {
        int reqId = event.getRequestID();
        int transId = event.getByte();
        event.getByte();
        String capability = "ims";
        if (event.getByte() == 1) {
            capability = "emergency";
        }
        return new ImsBearerRequest(transId, reqId, capability);
    }

    private ImsBearerRequest deCodeNwRelease(ImsAdapter.VaEvent event) {
        int reqId = event.getRequestID();
        int transId = event.getByte();
        event.getByte();
        boolean isValid = event.getByte() == 1;
        if (!isValid) {
            reqId = 800004;
        }
        String capability = "ims";
        if (event.getByte() == 1) {
            capability = "emergency";
        }
        return new ImsBearerRequest(transId, reqId, capability);
    }

    private ImsBearerRequest deCodePcscfDiscovery(ImsAdapter.VaEvent event) {
        int reqId = event.getRequestID();
        int transId = event.getByte();
        event.getByte();
        event.getBytes(2);
        return new ImsBearerRequest(transId, reqId, "ims");
    }

    public ImsAdapter.VaEvent enCodeEvent(int respId, String data) {
        switch (respId) {
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP /* 900009 */:
                return enCodeNwRequested(data);
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP /* 900010 */:
                return enCodeRejectNwRequested(data);
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP /* 900012 */:
                return enCodeNwReleased(data);
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP /* 900013 */:
                return enCodeRejectNwReleased(data);
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND /* 900014 */:
                return enCodeNotifyNwLost(data);
            case VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_NETWORK_HANDLE_NOTIFY /* 900301 */:
                return enCodeNotifyNetworkHandle(data);
            case VaConstants.MSG_ID_REJECT_PCSCF_DISCOVERY /* 900405 */:
                return enCodeRejectPcscfDiscovery(data);
            default:
                loge("not support event: " + respId);
                return null;
        }
    }

    private ImsAdapter.VaEvent enCodeNwRequested(String data) {
        logd("enCodeNwRequested: " + data);
        String[] contents = data.split(",");
        int transId = Integer.parseInt(contents[0]);
        int phoneId = Integer.parseInt(contents[1]);
        int netId = Integer.parseInt(contents[2]);
        String ifaceName = MtkPhoneConstants.MVNO_TYPE_NONE;
        if (contents.length > 3) {
            ifaceName = contents[3];
        }
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_ACK_RESP);
        event.putByte(transId);
        event.putBytes(new byte[3]);
        event.putInt(netId);
        event.putString(ifaceName, 16);
        return event;
    }

    private ImsAdapter.VaEvent enCodeRejectNwRequested(String data) {
        logd("enCodeRejectNwRequested: " + data);
        String[] contents = data.split(",");
        int transId = Integer.parseInt(contents[0]);
        int phoneId = Integer.parseInt(contents[1]);
        int cause = Integer.parseInt(contents[2]);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_ACT_REJ_RESP);
        event.putByte(transId);
        event.putBytes(new byte[3]);
        event.putInt(cause);
        return event;
    }

    private ImsAdapter.VaEvent enCodeNwReleased(String data) {
        logd("enCodeNwReleased: " + data);
        String[] contents = data.split(",");
        int transId = Integer.parseInt(contents[0]);
        int phoneId = Integer.parseInt(contents[1]);
        int cause = Integer.parseInt(contents[2]);
        String ifaceName = MtkPhoneConstants.MVNO_TYPE_NONE;
        if (contents.length > 3) {
            ifaceName = contents[3];
        }
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_ACK_RESP);
        event.putByte(transId);
        event.putByte(cause);
        event.putBytes(new byte[2]);
        event.putString(ifaceName, 16);
        return event;
    }

    private ImsAdapter.VaEvent enCodeRejectNwReleased(String data) {
        logd("enCodeRejectNwReleased: " + data);
        String[] contents = data.split(",");
        int transId = Integer.parseInt(contents[0]);
        int phoneId = Integer.parseInt(contents[1]);
        int cause = Integer.parseInt(contents[2]);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_REJ_RESP);
        event.putByte(transId);
        event.putBytes(new byte[3]);
        event.putInt(cause);
        return event;
    }

    private ImsAdapter.VaEvent enCodeNotifyNwLost(String data) {
        logd("enCodeNotifyNwLost: " + data);
        String[] contents = data.split(",");
        int phoneId = Integer.parseInt(contents[0]);
        int cause = Integer.parseInt(contents[1]);
        String ifaceName = MtkPhoneConstants.MVNO_TYPE_NONE;
        if (contents.length > 2) {
            ifaceName = contents[2];
        }
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_DEACT_IND);
        event.putByte(cause);
        event.putBytes(new byte[3]);
        event.putString(ifaceName, 16);
        return event;
    }

    private ImsAdapter.VaEvent enCodeRejectPcscfDiscovery(String data) {
        logd("enCodeRejectPcscfDiscovery: " + data);
        String[] contents = data.split(",");
        int transId = Integer.parseInt(contents[0]);
        int phoneId = Integer.parseInt(contents[1]);
        int cause = Integer.parseInt(contents[2]);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_REJECT_PCSCF_DISCOVERY);
        event.putByte(transId);
        event.putByte(cause);
        event.putBytes(new byte[2]);
        return event;
    }

    private ImsAdapter.VaEvent enCodeNotifyNetworkHandle(String data) {
        logd("enCodeNotifyNetworkHandle: " + data);
        String[] contents = data.split(",");
        int phoneId = Integer.parseInt(contents[0]);
        long networkHandle = Long.parseLong(contents[1]);
        ImsAdapter.VaEvent event = new ImsAdapter.VaEvent(phoneId, VaConstants.MSG_ID_WRAP_IMSPA_IMSM_PDN_NETWORK_HANDLE_NOTIFY);
        event.putLong(networkHandle);
        return event;
    }

    public void logd(String s) {
        Rlog.d(TAG, s);
    }

    public void logi(String s) {
        Rlog.i(TAG, s);
    }

    public void loge(String s) {
        Rlog.e(TAG, s);
    }

    /* loaded from: classes.dex */
    public class ImsBearerRequest {
        private String mCapability;
        private int mRequest;
        private int mTransId;

        private ImsBearerRequest(int transId, int request, String capability) {
            this.mTransId = transId;
            this.mRequest = request;
            this.mCapability = capability;
        }

        public int getTransId() {
            return this.mTransId;
        }

        public int getRequestID() {
            return this.mRequest;
        }

        public String getCapability() {
            return this.mCapability;
        }

        public String toString() {
            return "{ transId: " + this.mTransId + " Request: " + this.mRequest + " Capbility: " + this.mCapability + " }";
        }
    }
}
