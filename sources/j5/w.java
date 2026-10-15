package j5;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_auth.zzfy;
import g5.o0;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class w {
    public static zzfy a(g5.d dVar, String str) {
        Preconditions.k(dVar);
        if (g5.w.class.isAssignableFrom(dVar.getClass())) {
            return g5.w.Y3((g5.w) dVar, str);
        }
        if (g5.f.class.isAssignableFrom(dVar.getClass())) {
            return g5.f.Y3((g5.f) dVar, str);
        }
        if (g5.i0.class.isAssignableFrom(dVar.getClass())) {
            return g5.i0.Y3((g5.i0) dVar, str);
        }
        if (g5.v.class.isAssignableFrom(dVar.getClass())) {
            return g5.v.Y3((g5.v) dVar, str);
        }
        if (g5.h0.class.isAssignableFrom(dVar.getClass())) {
            return g5.h0.Y3((g5.h0) dVar, str);
        }
        if (o0.class.isAssignableFrom(dVar.getClass())) {
            return o0.b4((o0) dVar, str);
        }
        throw new IllegalArgumentException("Unsupported credential type.");
    }
}
