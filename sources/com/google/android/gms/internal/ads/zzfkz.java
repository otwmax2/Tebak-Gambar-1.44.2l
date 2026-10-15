package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfkz {
    public static zzfut a(Task task) {
        final zzfky zzfkyVar = new zzfky(task);
        task.d(zzfva.b(), new OnCompleteListener() { // from class: com.google.android.gms.internal.ads.zzfkx
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void a(Task task2) {
                zzfky zzfkyVar2 = zzfkyVar;
                if (task2.r()) {
                    zzfkyVar2.cancel(false);
                    return;
                }
                if (task2.t()) {
                    zzfkyVar2.h(task2.p());
                    return;
                }
                Exception excO = task2.o();
                if (excO == null) {
                    throw new IllegalStateException();
                }
                zzfkyVar2.i(excO);
            }
        });
        return zzfkyVar;
    }
}
