package com.google.android.gms.internal.drive;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzlc extends zzla {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Class<?> f22222c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzlc() {
        super();
    }

    private static <E> List<E> e(Object obj, long j10) {
        return (List) zznd.G(obj, j10);
    }

    @Override // com.google.android.gms.internal.drive.zzla
    final void a(Object obj, long j10) {
        Object objUnmodifiableList;
        List list = (List) zznd.G(obj, j10);
        if (list instanceof zzkz) {
            objUnmodifiableList = ((zzkz) list).f3();
        } else {
            if (f22222c.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzmc) && (list instanceof zzkp)) {
                zzkp zzkpVar = (zzkp) list;
                if (zzkpVar.X0()) {
                    zzkpVar.C2();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zznd.g(obj, j10, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.drive.zzla
    final <E> void b(Object obj, Object obj2, long j10) {
        List list;
        List list2;
        List listE = e(obj2, j10);
        int size = listE.size();
        List listE2 = e(obj, j10);
        if (listE2.isEmpty()) {
            List zzkyVar = listE2 instanceof zzkz ? new zzky(size) : ((listE2 instanceof zzmc) && (listE2 instanceof zzkp)) ? ((zzkp) listE2).x2(size) : new ArrayList(size);
            zznd.g(obj, j10, zzkyVar);
            list2 = zzkyVar;
        } else {
            if (f22222c.isAssignableFrom(listE2.getClass())) {
                ArrayList arrayList = new ArrayList(listE2.size() + size);
                arrayList.addAll(listE2);
                zznd.g(obj, j10, arrayList);
                list = arrayList;
            } else if (listE2 instanceof zzna) {
                zzky zzkyVar2 = new zzky(listE2.size() + size);
                zzkyVar2.addAll((zzna) listE2);
                zznd.g(obj, j10, zzkyVar2);
                list = zzkyVar2;
            } else {
                boolean z10 = listE2 instanceof zzmc;
                list2 = listE2;
                if (z10) {
                    boolean z11 = listE2 instanceof zzkp;
                    list2 = listE2;
                    if (z11) {
                        zzkp zzkpVar = (zzkp) listE2;
                        list2 = listE2;
                        if (!zzkpVar.X0()) {
                            zzkp<E> zzkpVarX2 = zzkpVar.x2(listE2.size() + size);
                            zznd.g(obj, j10, zzkpVarX2);
                            list2 = zzkpVarX2;
                        }
                    }
                }
            }
            list2 = list;
        }
        int size2 = list2.size();
        int size3 = listE.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(listE);
        }
        if (size2 > 0) {
            listE = list2;
        }
        zznd.g(obj, j10, listE);
    }
}
