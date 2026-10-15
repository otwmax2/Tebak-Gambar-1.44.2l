package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzfz extends zzfh {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final zzfl f18891p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f18892q;

    public zzfz(zzfl zzflVar, int i10, int i11) {
        super(b(2008, 1));
        this.f18891p = zzflVar;
        this.f18892q = 1;
    }

    public static zzfz a(IOException iOException, zzfl zzflVar, int i10) {
        String message = iOException.getMessage();
        int i11 = 2001;
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else if (message != null && zzfnb.a(message).matches("cleartext.*not permitted.*")) {
            i11 = 2007;
        }
        return i11 == 2007 ? new zzfy(iOException, zzflVar) : new zzfz(iOException, zzflVar, i11, i10);
    }

    private static int b(int i10, int i11) {
        return i10 == 2000 ? i11 != 1 ? 2000 : 2001 : i10;
    }

    public zzfz(IOException iOException, zzfl zzflVar, int i10, int i11) {
        super(iOException, b(i10, i11));
        this.f18891p = zzflVar;
        this.f18892q = i11;
    }

    public zzfz(String str, zzfl zzflVar, int i10, int i11) {
        super(str, b(i10, i11));
        this.f18891p = zzflVar;
        this.f18892q = i11;
    }

    public zzfz(String str, IOException iOException, zzfl zzflVar, int i10, int i11) {
        super(str, iOException, b(i10, i11));
        this.f18891p = zzflVar;
        this.f18892q = i11;
    }
}
