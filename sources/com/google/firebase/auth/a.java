package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ q6.b f26268o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f26269p;

    a(FirebaseAuth firebaseAuth, q6.b bVar) {
        this.f26269p = firebaseAuth;
        this.f26268o = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f26269p.f26254c.iterator();
        while (it.hasNext()) {
            ((j5.a) it.next()).a(this.f26268o);
        }
        Iterator it2 = this.f26269p.f26253b.iterator();
        while (it2.hasNext()) {
            ((FirebaseAuth.b) it2.next()).a(this.f26269p);
        }
    }
}
