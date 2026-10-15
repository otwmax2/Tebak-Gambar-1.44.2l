package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f8857a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f8858b = 0;

    public static zzbp a(zzen zzenVar) {
        String str;
        int iK = zzenVar.k() + zzenVar.m();
        int iM = zzenVar.m();
        int i10 = (iM >> 24) & 255;
        zzbp zzadiVar = null;
        try {
            if (i10 == 169 || i10 == 253) {
                int i11 = iM & 16777215;
                if (i11 == 6516084) {
                    int iM2 = zzenVar.m();
                    if (zzenVar.m() == 1684108385) {
                        zzenVar.g(8);
                        String strE = zzenVar.E(iM2 - 16);
                        zzadiVar = new zzadi("und", strE, strE);
                    } else {
                        zzee.e("MetadataUtil", "Failed to parse comment attribute: ".concat(zzafj.b(iM)));
                    }
                    return zzadiVar;
                }
                if (i11 == 7233901 || i11 == 7631467) {
                    return e(iM, "TIT2", zzenVar);
                }
                if (i11 == 6516589 || i11 == 7828084) {
                    return e(iM, "TCOM", zzenVar);
                }
                if (i11 == 6578553) {
                    return e(iM, "TDRC", zzenVar);
                }
                if (i11 == 4280916) {
                    return e(iM, "TPE1", zzenVar);
                }
                if (i11 == 7630703) {
                    return e(iM, "TSSE", zzenVar);
                }
                if (i11 == 6384738) {
                    return e(iM, "TALB", zzenVar);
                }
                if (i11 == 7108978) {
                    return e(iM, "USLT", zzenVar);
                }
                if (i11 == 6776174) {
                    return e(iM, "TCON", zzenVar);
                }
                if (i11 == 6779504) {
                    return e(iM, "TIT1", zzenVar);
                }
            } else {
                if (iM == 1735291493) {
                    int iB = b(zzenVar);
                    String str2 = (iB <= 0 || iB > 192) ? null : f8857a[iB - 1];
                    if (str2 != null) {
                        zzadiVar = new zzadx("TCON", null, zzfqk.v(str2));
                    } else {
                        zzee.e("MetadataUtil", "Failed to parse standard genre code");
                    }
                    return zzadiVar;
                }
                if (iM == 1684632427) {
                    return d(1684632427, "TPOS", zzenVar);
                }
                if (iM == 1953655662) {
                    return d(1953655662, "TRCK", zzenVar);
                }
                if (iM == 1953329263) {
                    return c(1953329263, "TBPM", zzenVar, true, false);
                }
                if (iM == 1668311404) {
                    return c(1668311404, "TCMP", zzenVar, true, true);
                }
                if (iM == 1668249202) {
                    int iM3 = zzenVar.m();
                    if (zzenVar.m() == 1684108385) {
                        int iM4 = zzenVar.m() & 16777215;
                        if (iM4 == 13) {
                            str = "image/jpeg";
                        } else if (iM4 == 14) {
                            str = "image/png";
                            iM4 = 14;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            zzee.e("MetadataUtil", "Unrecognized cover art flags: " + iM4);
                        } else {
                            zzenVar.g(4);
                            int i12 = iM3 - 16;
                            byte[] bArr = new byte[i12];
                            zzenVar.b(bArr, 0, i12);
                            zzadiVar = new zzada(str, null, 3, bArr);
                        }
                    } else {
                        zzee.e("MetadataUtil", "Failed to parse cover art attribute");
                    }
                    return zzadiVar;
                }
                if (iM == 1631670868) {
                    return e(1631670868, "TPE2", zzenVar);
                }
                if (iM == 1936682605) {
                    return e(1936682605, "TSOT", zzenVar);
                }
                if (iM == 1936679276) {
                    return e(1936679276, "TSO2", zzenVar);
                }
                if (iM == 1936679282) {
                    return e(1936679282, "TSOA", zzenVar);
                }
                if (iM == 1936679265) {
                    return e(1936679265, "TSOP", zzenVar);
                }
                if (iM == 1936679791) {
                    return e(1936679791, "TSOC", zzenVar);
                }
                if (iM == 1920233063) {
                    return c(1920233063, "ITUNESADVISORY", zzenVar, false, false);
                }
                if (iM == 1885823344) {
                    return c(1885823344, "ITUNESGAPLESS", zzenVar, false, true);
                }
                if (iM == 1936683886) {
                    return e(1936683886, "TVSHOWSORT", zzenVar);
                }
                if (iM == 1953919848) {
                    return e(1953919848, "TVSHOW", zzenVar);
                }
                if (iM == 757935405) {
                    String strE2 = null;
                    String strE3 = null;
                    int i13 = -1;
                    int i14 = -1;
                    while (zzenVar.k() < iK) {
                        int iK2 = zzenVar.k();
                        int iM5 = zzenVar.m();
                        int iM6 = zzenVar.m();
                        zzenVar.g(4);
                        if (iM6 == 1835360622) {
                            strE2 = zzenVar.E(iM5 - 12);
                        } else if (iM6 == 1851878757) {
                            strE3 = zzenVar.E(iM5 - 12);
                        } else {
                            if (iM6 == 1684108385) {
                                i14 = iM5;
                            }
                            if (iM6 == 1684108385) {
                                i13 = iK2;
                            }
                            zzenVar.g(iM5 - 12);
                        }
                    }
                    if (strE2 != null && strE3 != null && i13 != -1) {
                        zzenVar.f(i13);
                        zzenVar.g(16);
                        zzadiVar = new zzadr(strE2, strE3, zzenVar.E(i14 - 16));
                    }
                    return zzadiVar;
                }
            }
            zzee.a("MetadataUtil", "Skipped unknown metadata entry: " + zzafj.b(iM));
            return null;
        } finally {
            zzenVar.f(iK);
        }
    }

    private static int b(zzen zzenVar) {
        zzenVar.g(4);
        if (zzenVar.m() == 1684108385) {
            zzenVar.g(8);
            return zzenVar.s();
        }
        zzee.e("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    private static zzadp c(int i10, String str, zzen zzenVar, boolean z10, boolean z11) {
        int iB = b(zzenVar);
        if (z11) {
            iB = Math.min(1, iB);
        }
        if (iB >= 0) {
            return z10 ? new zzadx(str, null, zzfqk.v(Integer.toString(iB))) : new zzadi("und", str, Integer.toString(iB));
        }
        zzee.e("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzafj.b(i10)));
        return null;
    }

    private static zzadx d(int i10, String str, zzen zzenVar) {
        int iM = zzenVar.m();
        if (zzenVar.m() == 1684108385 && iM >= 22) {
            zzenVar.g(10);
            int iW = zzenVar.w();
            if (iW > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(iW);
                String string = sb.toString();
                int iW2 = zzenVar.w();
                if (iW2 > 0) {
                    string = string + "/" + iW2;
                }
                return new zzadx(str, null, zzfqk.v(string));
            }
        }
        zzee.e("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzafj.b(i10)));
        return null;
    }

    private static zzadx e(int i10, String str, zzen zzenVar) {
        int iM = zzenVar.m();
        if (zzenVar.m() == 1684108385) {
            zzenVar.g(8);
            return new zzadx(str, null, zzfqk.v(zzenVar.E(iM - 16)));
        }
        zzee.e("MetadataUtil", "Failed to parse text attribute: ".concat(zzafj.b(i10)));
        return null;
    }
}
