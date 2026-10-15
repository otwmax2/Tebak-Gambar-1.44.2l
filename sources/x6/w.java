package x6;

import android.util.Base64;

/* JADX INFO: compiled from: SessionDataStoreConfigs.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w f36459a = new w();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36461c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f36462d;

    static {
        String strEncodeToString = Base64.encodeToString(ba.p.j(v.f36458a.e()), 10);
        f36460b = strEncodeToString;
        f36461c = "firebase_session_" + strEncodeToString + "_data";
        f36462d = "firebase_session_" + strEncodeToString + "_settings";
    }

    private w() {
    }

    public final String a() {
        return f36461c;
    }

    public final String b() {
        return f36462d;
    }
}
