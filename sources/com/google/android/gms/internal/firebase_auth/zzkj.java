package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkj extends zzkp {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzki f22854p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private zzkj(zzki zzkiVar) {
        super(zzkiVar, null);
        this.f22854p = zzkiVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzkp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzkk(this.f22854p, null);
    }

    /* synthetic */ zzkj(zzki zzkiVar, zzkh zzkhVar) {
        this(zzkiVar);
    }
}
