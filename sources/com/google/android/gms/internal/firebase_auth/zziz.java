package com.google.android.gms.internal.firebase_auth;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zziz extends zzix {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f22793c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zziz() {
        super();
    }

    private static <L> List<L> e(Object obj, long j10, int i10) {
        Object obj2;
        List<L> listF = f(obj, j10);
        if (listF.isEmpty()) {
            List<L> zzivVar = listF instanceof zziy ? new zziv(i10) : ((listF instanceof zzka) && (listF instanceof zzio)) ? ((zzio) listF).h(i10) : new ArrayList<>(i10);
            zzlf.j(obj, j10, zzivVar);
            return zzivVar;
        }
        if (f22793c.isAssignableFrom(listF.getClass())) {
            ArrayList arrayList = new ArrayList(listF.size() + i10);
            arrayList.addAll(listF);
            zzlf.j(obj, j10, arrayList);
            obj2 = arrayList;
        } else {
            if (!(listF instanceof zzla)) {
                if (!(listF instanceof zzka) || !(listF instanceof zzio)) {
                    return listF;
                }
                zzio zzioVar = (zzio) listF;
                if (zzioVar.zza()) {
                    return listF;
                }
                zzio zzioVarH = zzioVar.h(listF.size() + i10);
                zzlf.j(obj, j10, zzioVarH);
                return zzioVarH;
            }
            zziv zzivVar2 = new zziv(listF.size() + i10);
            zzivVar2.addAll((zzla) listF);
            zzlf.j(obj, j10, zzivVar2);
            obj2 = zzivVar2;
        }
        return (List<L>) obj2;
    }

    private static <E> List<E> f(Object obj, long j10) {
        return (List) zzlf.F(obj, j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzix
    final <E> void b(Object obj, Object obj2, long j10) {
        List listF = f(obj2, j10);
        List listE = e(obj, j10, listF.size());
        int size = listE.size();
        int size2 = listF.size();
        if (size > 0 && size2 > 0) {
            listE.addAll(listF);
        }
        if (size > 0) {
            listF = listE;
        }
        zzlf.j(obj, j10, listF);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzix
    final void d(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zzlf.F(obj, j10);
        if (list instanceof zziy) {
            objUnmodifiableList = ((zziy) list).b();
        } else {
            if (f22793c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzka) && (list instanceof zzio)) {
                zzio zzioVar = (zzio) list;
                if (zzioVar.zza()) {
                    zzioVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzlf.j(obj, j10, objUnmodifiableList);
    }
}
