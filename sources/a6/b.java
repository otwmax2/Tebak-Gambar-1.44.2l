package a6;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.firebase:firebase-dynamic-links@@19.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b6.a f48a;

    @VisibleForTesting
    @KeepForSdk
    public b(b6.a aVar) {
        if (aVar == null) {
            this.f48a = null;
            return;
        }
        if (aVar.V3() == 0) {
            aVar.W3(DefaultClock.d().a());
        }
        this.f48a = aVar;
    }

    public Uri a() {
        String strX3;
        b6.a aVar = this.f48a;
        if (aVar == null || (strX3 = aVar.X3()) == null) {
            return null;
        }
        return Uri.parse(strX3);
    }
}
