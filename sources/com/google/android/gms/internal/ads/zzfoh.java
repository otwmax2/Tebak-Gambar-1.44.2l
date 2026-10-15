package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfoh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfng f18504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfog f18505b;

    private zzfoh(zzfog zzfogVar) {
        zzfnf zzfnfVar = zzfnf.f18473p;
        this.f18505b = zzfogVar;
        this.f18504a = zzfnfVar;
    }

    public static zzfoh b(int i10) {
        return new zzfoh(new zzfod(4000));
    }

    public static zzfoh c(zzfng zzfngVar) {
        return new zzfoh(new zzfob(zzfngVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Iterator g(CharSequence charSequence) {
        return this.f18505b.a(this, charSequence);
    }

    public final Iterable d(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        return new zzfoe(this, charSequence);
    }

    public final List f(CharSequence charSequence) {
        Iterator itG = g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (itG.hasNext()) {
            arrayList.add((String) itG.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
