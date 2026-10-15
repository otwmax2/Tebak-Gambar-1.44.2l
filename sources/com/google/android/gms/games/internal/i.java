package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.games.VideosClient;
import com.google.android.gms.games.internal.zzf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class i extends zzf.u0<VideosClient.OnCaptureOverlayStateListener> {
    i(ListenerHolder listenerHolder) {
        super(listenerHolder);
    }

    @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzy
    public final void J0(final int i10) {
        X0(new zzf.s(i10) { // from class: com.google.android.gms.games.internal.h

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f8063a;

            {
                this.f8063a = i10;
            }

            @Override // com.google.android.gms.games.internal.zzf.s
            public final void accept(Object obj) {
                ((VideosClient.OnCaptureOverlayStateListener) obj).J0(this.f8063a);
            }
        });
    }
}
