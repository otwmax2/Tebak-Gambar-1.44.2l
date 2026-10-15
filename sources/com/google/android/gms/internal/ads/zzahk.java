package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzahk implements zzaiy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9070a;

    public zzahk() {
        this(0);
    }

    public zzahk(int i10, List list) {
        this.f9070a = list;
    }

    private final zzaio b(zzaix zzaixVar) {
        return new zzaio(d(zzaixVar));
    }

    private final zzajc c(zzaix zzaixVar) {
        return new zzajc(d(zzaixVar));
    }

    private final List d(zzaix zzaixVar) {
        String str;
        int i10;
        List listSingletonList;
        zzen zzenVar = new zzen(zzaixVar.f9326d);
        List arrayList = this.f9070a;
        while (zzenVar.i() > 0) {
            int iS = zzenVar.s();
            int iK = zzenVar.k() + zzenVar.s();
            if (iS == 134) {
                arrayList = new ArrayList();
                int iS2 = zzenVar.s() & 31;
                for (int i11 = 0; i11 < iS2; i11++) {
                    String strF = zzenVar.F(3, zzfnh.f18476c);
                    int iS3 = zzenVar.s();
                    boolean z10 = (iS3 & 128) != 0;
                    if (z10) {
                        i10 = iS3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i10 = 1;
                    }
                    byte bS = (byte) zzenVar.s();
                    zzenVar.g(1);
                    if (z10) {
                        int i12 = bS & 64;
                        int i13 = zzdn.f15212c;
                        listSingletonList = Collections.singletonList(i12 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    zzad zzadVar = new zzad();
                    zzadVar.s(str);
                    zzadVar.k(strF);
                    zzadVar.c0(i10);
                    zzadVar.i(listSingletonList);
                    arrayList.add(zzadVar.y());
                }
            }
            zzenVar.f(iK);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzaiy
    public final zzaja a(int i10, zzaix zzaixVar) {
        if (i10 != 2) {
            if (i10 == 3 || i10 == 4) {
                return new zzaie(new zzaib(zzaixVar.f9324b));
            }
            if (i10 == 21) {
                return new zzaie(new zzahz());
            }
            if (i10 == 27) {
                return new zzaie(new zzahw(b(zzaixVar), false, false));
            }
            if (i10 == 36) {
                return new zzaie(new zzahy(b(zzaixVar)));
            }
            if (i10 == 89) {
                return new zzaie(new zzahm(zzaixVar.f9325c));
            }
            if (i10 == 138) {
                return new zzaie(new zzahl(zzaixVar.f9324b));
            }
            if (i10 == 172) {
                return new zzaie(new zzahg(zzaixVar.f9324b));
            }
            if (i10 == 257) {
                return new zzain(new zzaid("application/vnd.dvb.ait"));
            }
            if (i10 != 128) {
                if (i10 != 129) {
                    if (i10 == 134) {
                        return new zzain(new zzaid("application/x-scte35"));
                    }
                    if (i10 != 135) {
                        switch (i10) {
                            case 15:
                                return new zzaie(new zzahj(false, zzaixVar.f9324b));
                            case 16:
                                return new zzaie(new zzahs(c(zzaixVar)));
                            case 17:
                                return new zzaie(new zzaia(zzaixVar.f9324b));
                            default:
                                return null;
                        }
                    }
                }
                return new zzaie(new zzahd(zzaixVar.f9324b));
            }
        }
        return new zzaie(new zzahp(c(zzaixVar)));
    }

    public zzahk(int i10) {
        this.f9070a = zzfqk.u();
    }
}
