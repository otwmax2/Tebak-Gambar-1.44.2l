package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzatv {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    int f9932b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f9931a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f9933c = new LinkedList();

    public final zzatu a(boolean z10) {
        synchronized (this.f9931a) {
            zzatu zzatuVar = null;
            if (this.f9933c.isEmpty()) {
                zzbza.b("Queue empty");
                return null;
            }
            int i10 = 0;
            if (this.f9933c.size() < 2) {
                zzatu zzatuVar2 = (zzatu) this.f9933c.get(0);
                if (z10) {
                    this.f9933c.remove(0);
                } else {
                    zzatuVar2.i();
                }
                return zzatuVar2;
            }
            int i11 = Integer.MIN_VALUE;
            int i12 = 0;
            for (zzatu zzatuVar3 : this.f9933c) {
                int iB = zzatuVar3.b();
                if (iB > i11) {
                    i10 = i12;
                }
                int i13 = iB > i11 ? iB : i11;
                if (iB > i11) {
                    zzatuVar = zzatuVar3;
                }
                i12++;
                i11 = i13;
            }
            this.f9933c.remove(i10);
            return zzatuVar;
        }
    }

    public final void b(zzatu zzatuVar) {
        synchronized (this.f9931a) {
            if (this.f9933c.size() >= 10) {
                zzbza.b("Queue is full, current size = " + this.f9933c.size());
                this.f9933c.remove(0);
            }
            int i10 = this.f9932b;
            this.f9932b = i10 + 1;
            zzatuVar.j(i10);
            zzatuVar.n();
            this.f9933c.add(zzatuVar);
        }
    }

    public final boolean c(zzatu zzatuVar) {
        synchronized (this.f9931a) {
            Iterator it = this.f9933c.iterator();
            while (it.hasNext()) {
                zzatu zzatuVar2 = (zzatu) it.next();
                if (com.google.android.gms.ads.internal.zzt.q().h().Y()) {
                    if (!com.google.android.gms.ads.internal.zzt.q().h().J() && !zzatuVar.equals(zzatuVar2) && zzatuVar2.f().equals(zzatuVar.f())) {
                        it.remove();
                        return true;
                    }
                } else if (!zzatuVar.equals(zzatuVar2) && zzatuVar2.d().equals(zzatuVar.d())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final boolean d(zzatu zzatuVar) {
        synchronized (this.f9931a) {
            return this.f9933c.contains(zzatuVar);
        }
    }
}
