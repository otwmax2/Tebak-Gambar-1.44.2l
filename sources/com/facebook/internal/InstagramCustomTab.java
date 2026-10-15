package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.login.CustomTabLoginMethodHandler;

/* JADX INFO: compiled from: InstagramCustomTab.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InstagramCustomTab extends CustomTab {
    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: InstagramCustomTab.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public final Uri getURIForAction(String str, Bundle bundle) {
            t9.m.e(str, "action");
            if (t9.m.a(str, CustomTabLoginMethodHandler.OAUTH_DIALOG)) {
                Utility utility = Utility.INSTANCE;
                ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
                return Utility.buildUri(ServerProtocol.getInstagramDialogAuthority(), ServerProtocol.INSTAGRAM_OAUTH_PATH, bundle);
            }
            Utility utility2 = Utility.INSTANCE;
            ServerProtocol serverProtocol2 = ServerProtocol.INSTANCE;
            String instagramDialogAuthority = ServerProtocol.getInstagramDialogAuthority();
            StringBuilder sb = new StringBuilder();
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            sb.append(FacebookSdk.getGraphApiVersion());
            sb.append("/dialog/");
            sb.append(str);
            return Utility.buildUri(instagramDialogAuthority, sb.toString(), bundle);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstagramCustomTab(String str, Bundle bundle) {
        super(str, bundle);
        t9.m.e(str, "action");
        setUri(Companion.getURIForAction(str, bundle == null ? new Bundle() : bundle));
    }
}
