package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.drive.events.OpenFileCallback;

/* JADX INFO: loaded from: classes2.dex */
final class zzdo implements ListenerHolder.Notifier<OpenFileCallback> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzdg f21923a;

    zzdo(zzdk zzdkVar, zzdg zzdgVar) {
        this.f21923a = zzdgVar;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* synthetic */ void a(OpenFileCallback openFileCallback) {
        this.f21923a.accept(openFileCallback);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void b() {
    }
}
