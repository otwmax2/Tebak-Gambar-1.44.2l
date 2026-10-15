package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzalx implements zzaly {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f9510b = Logger.getLogger(zzalx.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ThreadLocal f9511a = new zzalw(this);

    @Override // com.google.android.gms.internal.ads.zzaly
    public final zzamb a(zzgwk zzgwkVar, zzamc zzamcVar) throws IOException {
        int iQ3;
        long jA;
        long jZzb = zzgwkVar.zzb();
        ((ByteBuffer) this.f9511a.get()).rewind().limit(8);
        do {
            iQ3 = zzgwkVar.q3((ByteBuffer) this.f9511a.get());
            if (iQ3 == 8) {
                ((ByteBuffer) this.f9511a.get()).rewind();
                long jE = zzama.e((ByteBuffer) this.f9511a.get());
                byte[] bArr = null;
                if (jE < 8 && jE > 1) {
                    Logger logger = f9510b;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(jE);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) this.f9511a.get()).get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (jE == 1) {
                        ((ByteBuffer) this.f9511a.get()).limit(16);
                        zzgwkVar.q3((ByteBuffer) this.f9511a.get());
                        ((ByteBuffer) this.f9511a.get()).position(8);
                        jA = zzama.f((ByteBuffer) this.f9511a.get()) - 16;
                    } else {
                        jA = jE == 0 ? zzgwkVar.a() - zzgwkVar.zzb() : jE - 8;
                    }
                    if ("uuid".equals(str)) {
                        ((ByteBuffer) this.f9511a.get()).limit(((ByteBuffer) this.f9511a.get()).limit() + 16);
                        zzgwkVar.q3((ByteBuffer) this.f9511a.get());
                        bArr = new byte[16];
                        for (int iPosition = ((ByteBuffer) this.f9511a.get()).position() - 16; iPosition < ((ByteBuffer) this.f9511a.get()).position(); iPosition++) {
                            bArr[iPosition - (((ByteBuffer) this.f9511a.get()).position() - 16)] = ((ByteBuffer) this.f9511a.get()).get(iPosition);
                        }
                        jA -= 16;
                    }
                    long j10 = jA;
                    zzamb zzambVarB = b(str, bArr, zzamcVar instanceof zzamb ? ((zzamb) zzamcVar).zza() : BuildConfig.FLAVOR);
                    zzambVarB.d(zzamcVar);
                    ((ByteBuffer) this.f9511a.get()).rewind();
                    zzambVarB.b(zzgwkVar, (ByteBuffer) this.f9511a.get(), j10, this);
                    return zzambVarB;
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException(e10);
                }
            }
        } while (iQ3 >= 0);
        zzgwkVar.D(jZzb);
        throw new EOFException();
    }

    public abstract zzamb b(String str, byte[] bArr, String str2);
}
