package com.tebakgambar.model.request;

import android.os.Bundle;
import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.messaging.h0;
import com.tebakgambar.R;
import com.tebakgambar.TGApplication;
import java.util.Map;
import org.parceler.Parcel;

/* JADX INFO: loaded from: classes2.dex */
@Parcel
public class TGRemoteMessage {
    public String buttonNegativeText;
    public String buttonPositiveText;
    public String message;
    public String messageUrl;
    public String pushActionId;
    public String ticker;

    public TGRemoteMessage() {
    }

    public static TGRemoteMessage remoteMessageFromExtras(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("ntitle");
        String string2 = bundle.getString("nmessage");
        String string3 = bundle.getString("urlaction");
        String string4 = bundle.getString("type");
        if (string2 == null || string4 == null) {
            return null;
        }
        TGRemoteMessage tGRemoteMessage = new TGRemoteMessage();
        tGRemoteMessage.ticker = string;
        tGRemoteMessage.messageUrl = string3;
        tGRemoteMessage.pushActionId = string4;
        tGRemoteMessage.message = string2;
        return tGRemoteMessage;
    }

    public String buttonNegativeText() {
        String str = this.buttonNegativeText;
        return str != null ? str : TGApplication.d().getString(R.string.close);
    }

    public String buttonPositiveText() {
        String str = this.buttonPositiveText;
        if (str != null) {
            return str;
        }
        TGApplication tGApplicationD = TGApplication.d();
        if (this.pushActionId.equals(AppEventsConstants.EVENT_PARAM_VALUE_YES)) {
            return tGApplicationD.getString(R.string.lets_play);
        }
        if (this.pushActionId.equals("2")) {
            return tGApplicationD.getString(R.string.open_fb);
        }
        if (this.pushActionId.equals("3")) {
            return "twitter";
        }
        if (this.pushActionId.equals("4")) {
            return tGApplicationD.getString(R.string.update_game);
        }
        return tGApplicationD.getString(this.pushActionId.equals("5") ? R.string.see_info : R.string.lets_selfie);
    }

    public TGRemoteMessage(h0 h0Var) {
        Map<String, String> mapV3 = h0Var.V3();
        this.pushActionId = mapV3.get("type");
        this.message = mapV3.get("nmessage");
        this.messageUrl = mapV3.get("urlaction");
        this.ticker = mapV3.get("ntitle");
    }
}
