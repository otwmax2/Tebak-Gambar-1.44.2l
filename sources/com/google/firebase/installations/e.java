package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: GetAuthTokenListener.java */
/* JADX INFO: loaded from: classes2.dex */
class e implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f26367a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TaskCompletionSource<g> f26368b;

    public e(i iVar, TaskCompletionSource<g> taskCompletionSource) {
        this.f26367a = iVar;
        this.f26368b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.h
    public boolean a(Exception exc) {
        this.f26368b.d(exc);
        return true;
    }

    @Override // com.google.firebase.installations.h
    public boolean b(n6.d dVar) {
        if (!dVar.k() || this.f26367a.f(dVar)) {
            return false;
        }
        this.f26368b.c(g.a().b(dVar.b()).d(dVar.c()).c(dVar.h()).a());
        return true;
    }
}
