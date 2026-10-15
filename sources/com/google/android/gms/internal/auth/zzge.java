package com.google.android.gms.internal.auth;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzge extends zzgl {
    zzge(int i10) {
        super(i10, null);
    }

    @Override // com.google.android.gms.internal.auth.zzgl
    public final void a() {
        if (!l()) {
            for (int i10 = 0; i10 < b(); i10++) {
                Map.Entry entryH = h(i10);
                if (((zzek) entryH.getKey()).a()) {
                    entryH.setValue(Collections.unmodifiableList((List) entryH.getValue()));
                }
            }
            for (Map.Entry entry : c()) {
                if (((zzek) entry.getKey()).a()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
