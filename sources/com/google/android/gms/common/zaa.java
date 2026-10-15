package com.google.android.gms.common;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zaa implements SuccessContinuation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zaa f7673a = new zaa();

    private /* synthetic */ zaa() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task a(Object obj) {
        int i10 = GoogleApiAvailability.f6912d;
        return Tasks.e(null);
    }
}
