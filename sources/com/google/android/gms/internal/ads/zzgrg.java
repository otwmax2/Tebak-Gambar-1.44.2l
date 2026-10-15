package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrg extends zzgrk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class f19530c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzgrg() {
        super(null);
    }

    /* synthetic */ zzgrg(zzgrf zzgrfVar) {
        super(null);
    }

    private static List f(Object obj, long j10, int i10) {
        List list;
        List list2 = (List) zzgtq.p(obj, j10);
        if (list2.isEmpty()) {
            List zzgrdVar = list2 instanceof zzgre ? new zzgrd(i10) : ((list2 instanceof zzgsd) && (list2 instanceof zzgqv)) ? ((zzgqv) list2).K(i10) : new ArrayList(i10);
            zzgtq.D(obj, j10, zzgrdVar);
            return zzgrdVar;
        }
        if (f19530c.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i10);
            arrayList.addAll(list2);
            zzgtq.D(obj, j10, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof zzgtl)) {
                if (!(list2 instanceof zzgsd) || !(list2 instanceof zzgqv)) {
                    return list2;
                }
                zzgqv zzgqvVar = (zzgqv) list2;
                if (zzgqvVar.a()) {
                    return list2;
                }
                zzgqv zzgqvVarK = zzgqvVar.K(list2.size() + i10);
                zzgtq.D(obj, j10, zzgqvVarK);
                return zzgqvVarK;
            }
            zzgrd zzgrdVar2 = new zzgrd(list2.size() + i10);
            zzgrdVar2.addAll(zzgrdVar2.size(), (zzgtl) list2);
            zzgtq.D(obj, j10, zzgrdVar2);
            list = zzgrdVar2;
        }
        return list;
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final List a(Object obj, long j10) {
        return f(obj, j10, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final void b(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zzgtq.p(obj, j10);
        if (list instanceof zzgre) {
            objUnmodifiableList = ((zzgre) list).b();
        } else {
            if (f19530c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgsd) && (list instanceof zzgqv)) {
                zzgqv zzgqvVar = (zzgqv) list;
                if (zzgqvVar.a()) {
                    zzgqvVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzgtq.D(obj, j10, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.ads.zzgrk
    final void c(Object obj, Object obj2, long j10) {
        List list = (List) zzgtq.p(obj2, j10);
        List listF = f(obj, j10, list.size());
        int size = listF.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listF.addAll(list);
        }
        if (size > 0) {
            list = listF;
        }
        zzgtq.D(obj, j10, list);
    }
}
