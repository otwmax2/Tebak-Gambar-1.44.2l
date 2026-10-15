package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class n extends m<Bundle> {
    n(int i10, int i11, Bundle bundle) {
        super(i10, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.m
    final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        c(bundle2);
    }

    @Override // com.google.android.gms.cloudmessaging.m
    final boolean d() {
        return false;
    }
}
