package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzci implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ListenerHolder f21873a;

    @Override // com.google.android.gms.tasks.Continuation
    public final Object a(Task task) {
        return zzch.A(this.f21873a, task);
    }
}
