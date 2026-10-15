package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfof extends zzfna {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final CharSequence f18500q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final zzfng f18501r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f18502s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f18503t = Integer.MAX_VALUE;

    protected zzfof(zzfoh zzfohVar, CharSequence charSequence) {
        this.f18501r = zzfohVar.f18504a;
        this.f18500q = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzfna
    @CheckForNull
    protected final /* bridge */ /* synthetic */ Object a() {
        int iD;
        int i10 = this.f18502s;
        while (true) {
            int i11 = this.f18502s;
            if (i11 == -1) {
                b();
                return null;
            }
            int iE = e(i11);
            if (iE == -1) {
                iE = this.f18500q.length();
                this.f18502s = -1;
                iD = -1;
            } else {
                iD = d(iE);
                this.f18502s = iD;
            }
            if (iD != i10) {
                if (i10 < iE) {
                    this.f18500q.charAt(i10);
                }
                if (i10 < iE) {
                    this.f18500q.charAt(iE - 1);
                }
                int i12 = this.f18503t;
                if (i12 == 1) {
                    iE = this.f18500q.length();
                    this.f18502s = -1;
                    if (iE > i10) {
                        this.f18500q.charAt(iE - 1);
                    }
                } else {
                    this.f18503t = i12 - 1;
                }
                return this.f18500q.subSequence(i10, iE).toString();
            }
            int i13 = iD + 1;
            this.f18502s = i13;
            if (i13 > this.f18500q.length()) {
                this.f18502s = -1;
            }
        }
    }

    abstract int d(int i10);

    abstract int e(int i10);
}
