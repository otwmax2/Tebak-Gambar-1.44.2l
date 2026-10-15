package com.google.android.gms.internal.drive;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzmj extends zzmi {
    zzmj(int i10) {
        super(i10, null);
    }

    @Override // com.google.android.gms.internal.drive.zzmi
    public final void l() {
        if (!a()) {
            for (int i10 = 0; i10 < o(); i10++) {
                Map.Entry entryH = h(i10);
                if (((zzkd) entryH.getKey()).C()) {
                    entryH.setValue(Collections.unmodifiableList((List) entryH.getValue()));
                }
            }
            for (Map.Entry entry : p()) {
                if (((zzkd) entry.getKey()).C()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.l();
    }
}
