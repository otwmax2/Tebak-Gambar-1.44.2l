package com.google.android.gms.internal.common;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzw extends zzj {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final CharSequence f21700q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final zzo f21701r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final boolean f21702s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f21703t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f21704u = Integer.MAX_VALUE;

    protected zzw(zzx zzxVar, CharSequence charSequence) {
        this.f21701r = zzxVar.f21705a;
        this.f21702s = zzxVar.f21706b;
        this.f21700q = charSequence;
    }

    @Override // com.google.android.gms.internal.common.zzj
    @CheckForNull
    protected final /* bridge */ /* synthetic */ Object a() {
        int iE;
        int iD;
        int i10 = this.f21703t;
        while (true) {
            int i11 = this.f21703t;
            if (i11 == -1) {
                b();
                return null;
            }
            iE = e(i11);
            if (iE == -1) {
                iE = this.f21700q.length();
                this.f21703t = -1;
                iD = -1;
            } else {
                iD = d(iE);
                this.f21703t = iD;
            }
            if (iD == i10) {
                int i12 = iD + 1;
                this.f21703t = i12;
                if (i12 > this.f21700q.length()) {
                    this.f21703t = -1;
                }
            } else {
                if (i10 < iE) {
                    this.f21700q.charAt(i10);
                }
                if (i10 < iE) {
                    this.f21700q.charAt(iE - 1);
                }
                if (!this.f21702s || i10 != iE) {
                    break;
                }
                i10 = this.f21703t;
            }
        }
        int i13 = this.f21704u;
        if (i13 == 1) {
            iE = this.f21700q.length();
            this.f21703t = -1;
            if (iE > i10) {
                this.f21700q.charAt(iE - 1);
            }
        } else {
            this.f21704u = i13 - 1;
        }
        return this.f21700q.subSequence(i10, iE).toString();
    }

    abstract int d(int i10);

    abstract int e(int i10);
}
