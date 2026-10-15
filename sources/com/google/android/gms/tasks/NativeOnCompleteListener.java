package com.google.android.gms.tasks;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-tasks@@18.0.2 */
/* JADX INFO: loaded from: classes2.dex */
@KeepForSdk
public class NativeOnCompleteListener implements OnCompleteListener<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f24949a;

    @Override // com.google.android.gms.tasks.OnCompleteListener
    @KeepForSdk
    public void a(Task<Object> task) {
        Object objP;
        String message;
        Exception excO;
        if (task.t()) {
            objP = task.p();
            message = null;
        } else if (task.r() || (excO = task.o()) == null) {
            objP = null;
            message = null;
        } else {
            message = excO.getMessage();
            objP = null;
        }
        nativeOnComplete(this.f24949a, objP, task.t(), task.r(), message);
    }

    @KeepForSdk
    public native void nativeOnComplete(long j10, Object obj, boolean z10, boolean z11, String str);
}
