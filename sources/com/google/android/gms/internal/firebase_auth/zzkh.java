package com.google.android.gms.internal.firebase_auth;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkh extends zzki {
    zzkh(int i10) {
        super(i10, null);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzki
    public final void e() {
        if (!k()) {
            for (int i10 = 0; i10 < l(); i10++) {
                Map.Entry entryJ = j(i10);
                if (((zzhx) entryJ.getKey()).d()) {
                    entryJ.setValue(Collections.unmodifiableList((List) entryJ.getValue()));
                }
            }
            for (Map.Entry entry : o()) {
                if (((zzhx) entry.getKey()).d()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.e();
    }
}
