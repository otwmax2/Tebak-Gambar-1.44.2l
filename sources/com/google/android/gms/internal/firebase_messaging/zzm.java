package com.google.android.gms.internal.firebase_messaging;

import com.vungle.warren.ui.JavascriptBridge;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Logger f23003a = Logger.getLogger(zzm.class.getName());

    private zzm() {
    }

    public static void a(@CheckForNull InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException e10) {
            try {
                f23003a.logp(Level.WARNING, "com.google.common.io.Closeables", JavascriptBridge.MraidHandler.CLOSE_ACTION, "IOException thrown while closing Closeable.", (Throwable) e10);
            } catch (IOException e11) {
                throw new AssertionError(e11);
            }
        }
    }
}
