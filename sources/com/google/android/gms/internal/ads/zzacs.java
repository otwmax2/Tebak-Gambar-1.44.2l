package com.google.android.gms.internal.ads;

import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzacs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f8528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataOutputStream f8529b;

    public zzacs() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f8528a = byteArrayOutputStream;
        this.f8529b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] a(zzacr zzacrVar) {
        this.f8528a.reset();
        try {
            b(this.f8529b, zzacrVar.f8522o);
            String str = zzacrVar.f8523p;
            if (str == null) {
                str = BuildConfig.FLAVOR;
            }
            b(this.f8529b, str);
            this.f8529b.writeLong(zzacrVar.f8524q);
            this.f8529b.writeLong(zzacrVar.f8525r);
            this.f8529b.write(zzacrVar.f8526s);
            this.f8529b.flush();
            return this.f8528a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
