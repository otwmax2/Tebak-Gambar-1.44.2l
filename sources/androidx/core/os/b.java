package androidx.core.os;

import android.os.Bundle;
import android.os.IBinder;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;

/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2267a = new b();

    private b() {
    }

    public static final void a(Bundle bundle, String str, IBinder iBinder) {
        t9.m.e(bundle, "bundle");
        t9.m.e(str, SDKConstants.PARAM_KEY);
        bundle.putBinder(str, iBinder);
    }
}
