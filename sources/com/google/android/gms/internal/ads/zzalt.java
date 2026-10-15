package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzalt extends zzako {
    private final Object A;
    private final zzakt B;

    public zzalt(int i10, String str, zzakt zzaktVar, zzaks zzaksVar) {
        super(i10, str, zzaksVar);
        this.A = new Object();
        this.B = zzaktVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzako
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public void r(String str) {
        zzakt zzaktVar;
        synchronized (this.A) {
            zzaktVar = this.B;
        }
        zzaktVar.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzako
    protected final zzaku k(zzakk zzakkVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzakkVar.f9430b;
            Map map = zzakkVar.f9431c;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] strArrSplit = str2.split(";", 0);
                int i10 = 1;
                while (true) {
                    if (i10 >= strArrSplit.length) {
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i10].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                    i10++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzakkVar.f9430b);
        }
        return zzaku.b(str, zzall.b(zzakkVar));
    }
}
