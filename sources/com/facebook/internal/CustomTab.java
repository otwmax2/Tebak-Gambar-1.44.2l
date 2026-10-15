package com.facebook.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.d;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.CustomTabPrefetchHelper;
import java.util.ArrayList;

/* JADX INFO: compiled from: CustomTab.kt */
/* JADX INFO: loaded from: classes.dex */
public class CustomTab {
    public static final Companion Companion = new Companion(null);
    private Uri uri;

    /* JADX INFO: compiled from: CustomTab.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }

        public Uri getURIForAction(String str, Bundle bundle) {
            t9.m.e(str, "action");
            Utility utility = Utility.INSTANCE;
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            String dialogAuthority = ServerProtocol.getDialogAuthority();
            StringBuilder sb = new StringBuilder();
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            sb.append(FacebookSdk.getGraphApiVersion());
            sb.append("/dialog/");
            sb.append(str);
            return Utility.buildUri(dialogAuthority, sb.toString(), bundle);
        }
    }

    public CustomTab(String str, Bundle bundle) {
        Uri uRIForAction;
        t9.m.e(str, "action");
        bundle = bundle == null ? new Bundle() : bundle;
        GamingAction[] gamingActionArrValuesCustom = GamingAction.valuesCustom();
        ArrayList arrayList = new ArrayList(gamingActionArrValuesCustom.length);
        for (GamingAction gamingAction : gamingActionArrValuesCustom) {
            arrayList.add(gamingAction.getRawValue());
        }
        if (arrayList.contains(str)) {
            Utility utility = Utility.INSTANCE;
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            uRIForAction = Utility.buildUri(ServerProtocol.getGamingDialogAuthority(), t9.m.k("/dialog/", str), bundle);
        } else {
            uRIForAction = Companion.getURIForAction(str, bundle);
        }
        this.uri = uRIForAction;
    }

    public static Uri getURIForAction(String str, Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(CustomTab.class)) {
            return null;
        }
        try {
            return Companion.getURIForAction(str, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CustomTab.class);
            return null;
        }
    }

    protected final Uri getUri() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.uri;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final boolean openCustomTab(Activity activity, String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            t9.m.e(activity, "activity");
            androidx.browser.customtabs.d dVarA = new d.a(CustomTabPrefetchHelper.Companion.getPreparedSessionOnce()).a();
            dVarA.f1276a.setPackage(str);
            try {
                dVarA.a(activity, this.uri);
                return true;
            } catch (ActivityNotFoundException unused) {
                return false;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    protected final void setUri(Uri uri) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            t9.m.e(uri, "<set-?>");
            this.uri = uri;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
