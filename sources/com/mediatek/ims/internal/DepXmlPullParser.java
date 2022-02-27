package com.mediatek.ims.internal;

import android.telephony.Rlog;
import android.util.Xml;
import com.mediatek.ims.internal.DialogInfo;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class DepXmlPullParser implements DialogEventPackageParser {
    private static final String namespace = null;

    @Override // com.mediatek.ims.internal.DialogEventPackageParser
    public DialogInfo parse(InputStream in) throws XmlPullParserException, IOException {
        try {
            XmlPullParser parser = Xml.newPullParser();
            parser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
            parser.setInput(in, null);
            parser.nextTag();
            return readDialogInfo(parser);
        } finally {
            in.close();
        }
    }

    private DialogInfo readDialogInfo(XmlPullParser parser) throws XmlPullParserException, IOException {
        DialogInfo dialogInfo = new DialogInfo();
        parser.require(2, namespace, "dialog-info");
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                if (name.equals("dialog")) {
                    DialogInfo.Dialog dialog = readDialog(parser);
                    dialogInfo.addDialog(dialog);
                } else {
                    skip(parser);
                }
            }
        }
        return dialogInfo;
    }

    private DialogInfo.Dialog readDialog(XmlPullParser parser) throws XmlPullParserException, IOException {
        DialogInfo.Local local = null;
        parser.require(2, namespace, "dialog");
        int dialogId = Integer.parseInt(parser.getAttributeValue(null, "id"));
        boolean exclusive = true;
        String state = MtkPhoneConstants.MVNO_TYPE_NONE;
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                if (name.equals("sa:exclusive")) {
                    String str = readText(parser);
                    exclusive = Boolean.valueOf(str).booleanValue();
                } else if (name.equals("state")) {
                    state = readText(parser);
                } else if (name.equals("local")) {
                    local = readLocal(parser);
                } else {
                    skip(parser);
                }
            }
        }
        return new DialogInfo.Dialog(dialogId, exclusive, state, local);
    }

    private DialogInfo.Local readLocal(XmlPullParser parser) throws XmlPullParserException, IOException {
        DialogInfo.Local local = new DialogInfo.Local();
        parser.require(2, namespace, "local");
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                if (name.equals("identity")) {
                    String identity = readText(parser);
                    local.setIdentity(identity);
                } else if (name.equals("target")) {
                    String targetUri = parser.getAttributeValue(null, "uri");
                    local.setTargetUri(targetUri);
                    readTargetParamAttributesToLocal(parser, local);
                } else if (name.equals("mediaAttributes")) {
                    DialogInfo.MediaAttribute mediaAttribute = readMediaAttributes(parser);
                    local.addMediaAttribute(mediaAttribute);
                } else if (name.equals("param")) {
                    DialogInfo.Param param = readParam(parser);
                    local.setParam(param);
                    Rlog.d("DEP Parser", "read param from Local()");
                } else {
                    skip(parser);
                }
            }
        }
        return local;
    }

    private void readTargetParamAttributesToLocal(XmlPullParser parser, DialogInfo.Local local) throws XmlPullParserException, IOException {
        parser.require(2, namespace, "target");
        Rlog.d("DEP Parser", "readTargetParamAttributesToLocal()");
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                if (name.equals("param")) {
                    DialogInfo.Param param = readParam(parser);
                    local.setParam(param);
                } else {
                    skip(parser);
                }
            }
        }
    }

    private DialogInfo.MediaAttribute readMediaAttributes(XmlPullParser parser) throws XmlPullParserException, IOException {
        String mediaType = MtkPhoneConstants.MVNO_TYPE_NONE;
        String mediaDirection = MtkPhoneConstants.MVNO_TYPE_NONE;
        boolean port0 = false;
        parser.require(2, namespace, "mediaAttributes");
        while (parser.next() != 3) {
            if (parser.getEventType() == 2) {
                String name = parser.getName();
                if (name.equals("mediaType")) {
                    mediaType = readText(parser);
                } else if (name.equals("mediaDirection")) {
                    mediaDirection = readText(parser);
                } else if (name.equals("port0")) {
                    port0 = true;
                    skip(parser);
                } else {
                    skip(parser);
                }
            }
        }
        return new DialogInfo.MediaAttribute(mediaType, mediaDirection, port0);
    }

    private DialogInfo.Param readParam(XmlPullParser parser) throws IOException, XmlPullParserException {
        parser.require(2, namespace, "param");
        String pname = parser.getAttributeValue(null, "pname");
        String pval = parser.getAttributeValue(null, "pval");
        skip(parser);
        return new DialogInfo.Param(pname, pval);
    }

    private String readText(XmlPullParser parser) throws IOException, XmlPullParserException {
        if (parser.next() != 4) {
            return MtkPhoneConstants.MVNO_TYPE_NONE;
        }
        String result = parser.getText();
        parser.nextTag();
        return result;
    }

    private void skip(XmlPullParser parser) throws XmlPullParserException, IOException {
        if (parser.getEventType() == 2) {
            int depth = 1;
            while (depth != 0) {
                switch (parser.next()) {
                    case 2:
                        depth++;
                        break;
                    case 3:
                        depth--;
                        break;
                }
            }
            return;
        }
        throw new IllegalStateException();
    }
}
