package com.google.android.gms.tasks;

import com.google.android.gms.internal.tasks.zza;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zzy implements OnCompleteListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zza f25012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f25013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f25014c;

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void a(Task task) {
        zza zzaVar = this.f25012a;
        TaskCompletionSource taskCompletionSource = this.f25013b;
        e eVar = this.f25014c;
        zzaVar.removeCallbacksAndMessages(null);
        if (task.t()) {
            taskCompletionSource.e(task.p());
        } else {
            if (task.r()) {
                eVar.a();
                return;
            }
            Exception excO = task.o();
            excO.getClass();
            taskCompletionSource.d(excO);
        }
    }
}
