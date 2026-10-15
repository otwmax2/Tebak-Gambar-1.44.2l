package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
final class a implements Continuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Collection f24953a;

    a(Collection collection) {
        this.f24953a = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Object a(Task task) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f24953a);
        return Tasks.e(arrayList);
    }
}
