package com.google.android.gms.internal.drive;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzml extends zzmr {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzmi f22291p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzml(zzmi zzmiVar) {
        super(zzmiVar, null);
        this.f22291p = zzmiVar;
    }

    @Override // com.google.android.gms.internal.drive.zzmr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzmk(this.f22291p, null);
    }

    /* synthetic */ zzml(zzmi zzmiVar, zzmj zzmjVar) {
        this(zzmiVar);
    }
}
