package j5;

import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class g implements OnFailureListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ e f30700a;

    g(e eVar) {
        this.f30700a = eVar;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void b(Exception exc) {
        if (exc instanceof b5.p) {
            f.f30692h.g("Failure to refresh token; scheduling refresh after failure", new Object[0]);
            this.f30700a.f30679p.b();
        }
    }
}
