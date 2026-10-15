package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzabs implements zzabk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzfqk f8441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8442b;

    private zzabs(int i10, zzfqk zzfqkVar) {
        this.f8442b = i10;
        this.f8441a = zzfqkVar;
    }

    public static zzabs b(int i10, zzen zzenVar) {
        String str;
        zzfqh zzfqhVar = new zzfqh();
        int iL = zzenVar.l();
        int i11 = -2;
        while (zzenVar.i() > 8) {
            int iO = zzenVar.o();
            int iK = zzenVar.k() + zzenVar.o();
            zzenVar.e(iK);
            zzabk zzabtVar = null;
            if (iO != 1414744396) {
                switch (iO) {
                    case 1718776947:
                        if (i11 == 2) {
                            zzenVar.g(4);
                            int iO2 = zzenVar.o();
                            int iO3 = zzenVar.o();
                            zzenVar.g(4);
                            int iO4 = zzenVar.o();
                            switch (iO4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str != null) {
                                zzad zzadVar = new zzad();
                                zzadVar.x(iO2);
                                zzadVar.f(iO3);
                                zzadVar.s(str);
                                zzabtVar = new zzabt(zzadVar.y());
                            } else {
                                zzee.e("StreamFormatChunk", "Ignoring track with unsupported compression " + iO4);
                            }
                        } else if (i11 != 1) {
                            zzee.e("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzew.o(i11)));
                        } else {
                            int iQ = zzenVar.q();
                            String str2 = iQ != 1 ? iQ != 85 ? iQ != 255 ? iQ != 8192 ? iQ != 8193 ? null : "audio/vnd.dts" : "audio/ac3" : "audio/mp4a-latm" : "audio/mpeg" : "audio/raw";
                            if (str2 != null) {
                                int iQ2 = zzenVar.q();
                                int iO5 = zzenVar.o();
                                zzenVar.g(6);
                                int iY = zzew.Y(zzenVar.w());
                                int iQ3 = zzenVar.q();
                                byte[] bArr = new byte[iQ3];
                                zzenVar.b(bArr, 0, iQ3);
                                zzad zzadVar2 = new zzad();
                                zzadVar2.s(str2);
                                zzadVar2.e0(iQ2);
                                zzadVar2.t(iO5);
                                if ("audio/raw".equals(str2) && iY != 0) {
                                    zzadVar2.n(iY);
                                }
                                if ("audio/mp4a-latm".equals(str2) && iQ3 > 0) {
                                    zzadVar2.i(zzfqk.v(bArr));
                                }
                                zzabtVar = new zzabt(zzadVar2.y());
                            } else {
                                zzee.e("StreamFormatChunk", "Ignoring track with unsupported format tag " + iQ);
                            }
                        }
                        break;
                    case 1751742049:
                        zzabtVar = zzabp.a(zzenVar);
                        break;
                    case 1752331379:
                        zzabtVar = zzabq.a(zzenVar);
                        break;
                    case 1852994675:
                        zzabtVar = zzabu.a(zzenVar);
                        break;
                }
            } else {
                zzabtVar = b(zzenVar.o(), zzenVar);
            }
            if (zzabtVar != null) {
                if (zzabtVar.zza() == 1752331379) {
                    int i12 = ((zzabq) zzabtVar).f8424a;
                    if (i12 == 1935960438) {
                        i11 = 2;
                    } else if (i12 == 1935963489) {
                        i11 = 1;
                    } else if (i12 != 1937012852) {
                        zzee.e("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i12))));
                        i11 = -1;
                    } else {
                        i11 = 3;
                    }
                }
                zzfqhVar.g(zzabtVar);
            }
            zzenVar.f(iK);
            zzenVar.e(iL);
        }
        return new zzabs(i10, zzfqhVar.j());
    }

    public final zzabk a(Class cls) {
        zzfqk zzfqkVar = this.f8441a;
        int size = zzfqkVar.size();
        int i10 = 0;
        while (i10 < size) {
            zzabk zzabkVar = (zzabk) zzfqkVar.get(i10);
            i10++;
            if (zzabkVar.getClass() == cls) {
                return zzabkVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzabk
    public final int zza() {
        return this.f8442b;
    }
}
