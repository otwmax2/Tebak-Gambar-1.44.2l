package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth@@20.2.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zbb implements Runnable {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final Logger f6783q = new Logger("RevokeAccessOperation", new String[0]);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f6784o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final StatusPendingResult f6785p = new StatusPendingResult(null);

    public zbb(String str) {
        this.f6784o = Preconditions.g(str);
    }

    public static PendingResult a(String str) {
        if (str == null) {
            return PendingResults.a(new Status(4), null);
        }
        zbb zbbVar = new zbb(str);
        new Thread(zbbVar).start();
        return zbbVar.f6785p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f6975w;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://accounts.google.com/o/oauth2/revoke?token=" + this.f6784o).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f6973u;
            } else {
                f6783q.c("Unable to revoke access!", new Object[0]);
            }
            f6783q.a("Response Code: " + responseCode, new Object[0]);
        } catch (IOException e10) {
            f6783q.c("IOException when revoking access: ".concat(String.valueOf(e10.toString())), new Object[0]);
        } catch (Exception e11) {
            f6783q.c("Exception when revoking access: ".concat(String.valueOf(e11.toString())), new Object[0]);
        }
        this.f6785p.k(status);
    }
}
