package com.google.firebase.auth;

import com.google.firebase.auth.FirebaseAuth;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f26271o;

    c(FirebaseAuth firebaseAuth) {
        this.f26271o = firebaseAuth;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f26271o.f26255d.iterator();
        while (it.hasNext()) {
            ((FirebaseAuth.a) it.next()).a(this.f26271o);
        }
    }
}
