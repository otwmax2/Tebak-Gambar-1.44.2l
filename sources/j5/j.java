package j5;

import android.content.Context;
import com.google.android.gms.internal.firebase_auth.zzfy;
import com.google.firebase.auth.FirebaseAuth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j f30706c = new j();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f30707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f30708b;

    private j() {
        this(o.a(), h.a());
    }

    public static j a() {
        return f30706c;
    }

    public static void c(Context context, zzfy zzfyVar, String str, String str2) {
        o.d(context, zzfyVar, str, str2);
    }

    public final void b(Context context) {
        this.f30707a.b(context);
    }

    public final void d(FirebaseAuth firebaseAuth) {
        this.f30707a.f(firebaseAuth);
    }

    private j(o oVar, h hVar) {
        this.f30707a = oVar;
        this.f30708b = hVar;
    }
}
