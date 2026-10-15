package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaco {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f8517a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f8518b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f8519c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
    
        r7 = -9223372036854775807L;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.internal.ads.zzack a(java.lang.String r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaco.a(java.lang.String):com.google.android.gms.internal.ads.zzack");
    }

    private static zzfqk b(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        zzfqh zzfqhVarO = zzfqk.o();
        do {
            String strConcat = str.concat(":Item");
            xmlPullParser.next();
            if (zzex.c(xmlPullParser, strConcat)) {
                String strConcat2 = str2.concat(":Mime");
                String strConcat3 = str2.concat(":Semantic");
                String strConcat4 = str2.concat(":Length");
                String strConcat5 = str2.concat(":Padding");
                String strA = zzex.a(xmlPullParser, strConcat2);
                String strA2 = zzex.a(xmlPullParser, strConcat3);
                String strA3 = zzex.a(xmlPullParser, strConcat4);
                String strA4 = zzex.a(xmlPullParser, strConcat5);
                if (strA == null || strA2 == null) {
                    return zzfqk.u();
                }
                zzfqhVarO.g(new zzacj(strA, strA2, strA3 != null ? Long.parseLong(strA3) : 0L, strA4 != null ? Long.parseLong(strA4) : 0L));
            }
        } while (!zzex.b(xmlPullParser, str.concat(":Directory")));
        return zzfqhVarO.j();
    }
}
