package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzfww {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f18797a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzfwx f18799c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ConcurrentMap f18798b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzggl f18800d = zzggl.f19184b;

    /* synthetic */ zzfww(Class cls, zzfwv zzfwvVar) {
        this.f18797a = cls;
    }

    private final zzfww e(@Nullable Object obj, @Nullable Object obj2, zzglk zzglkVar, boolean z10) throws GeneralSecurityException {
        byte[] bArrArray;
        if (this.f18798b == null) {
            throw new IllegalStateException("addPrimitive cannot be called after build");
        }
        if (obj == null && obj2 == null) {
            throw new GeneralSecurityException("at least one of the `fullPrimitive` or `primitive` must be set");
        }
        if (zzglkVar.R() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        ConcurrentMap concurrentMap = this.f18798b;
        Integer numValueOf = Integer.valueOf(zzglkVar.I());
        if (zzglkVar.M() == zzgme.RAW) {
            numValueOf = null;
        }
        zzfvx zzfvxVarA = zzgdf.b().a(zzgdz.a(zzglkVar.J().N(), zzglkVar.J().M(), zzglkVar.J().J(), zzglkVar.M(), numValueOf), zzfxg.a());
        int iOrdinal = zzglkVar.M().ordinal();
        if (iOrdinal == 1) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(zzglkVar.I()).array();
        } else if (iOrdinal == 2) {
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzglkVar.I()).array();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(zzglkVar.I()).array();
        } else {
            bArrArray = zzfvt.f18764a;
        }
        zzfwx zzfwxVar = new zzfwx(obj, obj2, bArrArray, zzglkVar.R(), zzglkVar.M(), zzglkVar.I(), zzglkVar.J().N(), zzfvxVarA);
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzfwxVar);
        zzfwz zzfwzVar = new zzfwz(zzfwxVar.g(), null);
        List list = (List) concurrentMap.put(zzfwzVar, Collections.unmodifiableList(arrayList));
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list);
            arrayList2.add(zzfwxVar);
            concurrentMap.put(zzfwzVar, Collections.unmodifiableList(arrayList2));
        }
        if (z10) {
            if (this.f18799c != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.f18799c = zzfwxVar;
        }
        return this;
    }

    public final zzfww a(@Nullable Object obj, @Nullable Object obj2, zzglk zzglkVar) throws GeneralSecurityException {
        e(obj, obj2, zzglkVar, false);
        return this;
    }

    public final zzfww b(@Nullable Object obj, @Nullable Object obj2, zzglk zzglkVar) throws GeneralSecurityException {
        e(obj, obj2, zzglkVar, true);
        return this;
    }

    public final zzfww c(zzggl zzgglVar) {
        if (this.f18798b == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build");
        }
        this.f18800d = zzgglVar;
        return this;
    }

    public final zzfxb d() throws GeneralSecurityException {
        ConcurrentMap concurrentMap = this.f18798b;
        if (concurrentMap == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        zzfxb zzfxbVar = new zzfxb(concurrentMap, this.f18799c, this.f18800d, this.f18797a, null);
        this.f18798b = null;
        return zzfxbVar;
    }
}
