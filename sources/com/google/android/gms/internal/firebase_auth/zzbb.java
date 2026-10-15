package com.google.android.gms.internal.firebase_auth;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzbb extends zzae<String> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final CharSequence f22425q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzaf f22426r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f22429u;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f22428t = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f22427s = false;

    protected zzbb(zzau zzauVar, CharSequence charSequence) {
        this.f22426r = zzauVar.f22415a;
        this.f22429u = zzauVar.f22418d;
        this.f22425q = charSequence;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzae
    protected final /* synthetic */ String a() {
        int iD;
        int i10 = this.f22428t;
        while (true) {
            int i11 = this.f22428t;
            if (i11 == -1) {
                b();
                return null;
            }
            iD = d(i11);
            if (iD == -1) {
                iD = this.f22425q.length();
                this.f22428t = -1;
            } else {
                this.f22428t = e(iD);
            }
            int i12 = this.f22428t;
            if (i12 == i10) {
                int i13 = i12 + 1;
                this.f22428t = i13;
                if (i13 > this.f22425q.length()) {
                    this.f22428t = -1;
                }
            } else {
                while (i10 < iD && this.f22426r.b(this.f22425q.charAt(i10))) {
                    i10++;
                }
                while (iD > i10 && this.f22426r.b(this.f22425q.charAt(iD - 1))) {
                    iD--;
                }
                if (!this.f22427s || i10 != iD) {
                    break;
                }
                i10 = this.f22428t;
            }
        }
        int i14 = this.f22429u;
        if (i14 == 1) {
            iD = this.f22425q.length();
            this.f22428t = -1;
            while (iD > i10 && this.f22426r.b(this.f22425q.charAt(iD - 1))) {
                iD--;
            }
        } else {
            this.f22429u = i14 - 1;
        }
        return this.f22425q.subSequence(i10, iD).toString();
    }

    abstract int d(int i10);

    abstract int e(int i10);
}
