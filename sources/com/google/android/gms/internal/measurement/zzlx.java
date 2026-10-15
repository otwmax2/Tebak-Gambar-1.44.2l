package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlx extends zzmh {
    zzlx(int i10) {
        super(i10, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final void a() {
        if (!l()) {
            for (int i10 = 0; i10 < b(); i10++) {
                Map.Entry entryH = h(i10);
                if (((zzjs) entryH.getKey()).a()) {
                    entryH.setValue(Collections.unmodifiableList((List) entryH.getValue()));
                }
            }
            for (Map.Entry entry : c()) {
                if (((zzjs) entry.getKey()).a()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
