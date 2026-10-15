package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;

/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f2268a = new c();

    private c() {
    }

    public static final void a(Bundle bundle, String str, Size size) {
        t9.m.e(bundle, "bundle");
        t9.m.e(str, SDKConstants.PARAM_KEY);
        bundle.putSize(str, size);
    }

    public static final void b(Bundle bundle, String str, SizeF sizeF) {
        t9.m.e(bundle, "bundle");
        t9.m.e(str, SDKConstants.PARAM_KEY);
        bundle.putSizeF(str, sizeF);
    }
}
