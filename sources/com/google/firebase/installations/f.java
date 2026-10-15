package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: GetIdListener.java */
/* JADX INFO: loaded from: classes2.dex */
class f implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TaskCompletionSource<String> f26369a;

    public f(TaskCompletionSource<String> taskCompletionSource) {
        this.f26369a = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.h
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.h
    public boolean b(n6.d dVar) {
        if (!dVar.l() && !dVar.k() && !dVar.i()) {
            return false;
        }
        this.f26369a.e(dVar.d());
        return true;
    }
}
