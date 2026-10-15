package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayDeque f19583a = new ArrayDeque();

    private zzgsk() {
    }

    static /* bridge */ /* synthetic */ zzgpe a(zzgsk zzgskVar, zzgpe zzgpeVar, zzgpe zzgpeVar2) {
        zzgskVar.b(zzgpeVar);
        zzgskVar.b(zzgpeVar2);
        zzgpe zzgsoVar = (zzgpe) zzgskVar.f19583a.pop();
        while (!zzgskVar.f19583a.isEmpty()) {
            zzgsoVar = new zzgso((zzgpe) zzgskVar.f19583a.pop(), zzgsoVar);
        }
        return zzgsoVar;
    }

    private final void b(zzgpe zzgpeVar) {
        zzgsn zzgsnVar;
        if (!zzgpeVar.r()) {
            if (!(zzgpeVar instanceof zzgso)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgpeVar.getClass())));
            }
            zzgso zzgsoVar = (zzgso) zzgpeVar;
            b(zzgsoVar.f19588t);
            b(zzgsoVar.f19589u);
            return;
        }
        int iC = c(zzgpeVar.o());
        int iS = zzgso.S(iC + 1);
        if (this.f19583a.isEmpty() || ((zzgpe) this.f19583a.peek()).o() >= iS) {
            this.f19583a.push(zzgpeVar);
            return;
        }
        int iS2 = zzgso.S(iC);
        zzgpe zzgsoVar2 = (zzgpe) this.f19583a.pop();
        while (true) {
            zzgsnVar = null;
            if (this.f19583a.isEmpty() || ((zzgpe) this.f19583a.peek()).o() >= iS2) {
                break;
            } else {
                zzgsoVar2 = new zzgso((zzgpe) this.f19583a.pop(), zzgsoVar2);
            }
        }
        zzgso zzgsoVar3 = new zzgso(zzgsoVar2, zzgpeVar);
        while (!this.f19583a.isEmpty()) {
            if (((zzgpe) this.f19583a.peek()).o() >= zzgso.S(c(zzgsoVar3.o()) + 1)) {
                break;
            } else {
                zzgsoVar3 = new zzgso((zzgpe) this.f19583a.pop(), zzgsoVar3);
            }
        }
        this.f19583a.push(zzgsoVar3);
    }

    private static final int c(int i10) {
        int iBinarySearch = Arrays.binarySearch(zzgso.f19586x, i10);
        return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
    }

    /* synthetic */ zzgsk(zzgsj zzgsjVar) {
    }
}
