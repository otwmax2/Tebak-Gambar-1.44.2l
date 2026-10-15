package i5;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class c implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f30403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Integer> f30405c;

    public c(int i10, int i11, Map<String, Integer> map) {
        this.f30403a = a() ? 0 : i10;
        this.f30404b = i11;
        this.f30405c = (Map) Preconditions.k(map);
        a();
    }

    private static boolean a() {
        boolean zEquals = "local".equals(j1.a("firebear.preference"));
        if (zEquals) {
            Log.e("BiChannelGoogleApi", "Found local preference, will always use local service instance");
        }
        return zEquals;
    }

    @Override // i5.g
    public final boolean o(String str) {
        int i10 = this.f30403a;
        if (i10 == 0) {
            return true;
        }
        if (this.f30404b <= i10) {
            return false;
        }
        Integer num = this.f30405c.get(str);
        if (num == null) {
            num = 0;
        }
        return num.intValue() > this.f30403a && this.f30404b >= num.intValue();
    }
}
