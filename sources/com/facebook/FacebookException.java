package com.facebook;

import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import java.util.Arrays;
import java.util.Random;

/* JADX INFO: compiled from: FacebookException.kt */
/* JADX INFO: loaded from: classes.dex */
public class FacebookException extends RuntimeException {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 1;

    /* JADX INFO: compiled from: FacebookException.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(t9.g gVar) {
            this();
        }
    }

    public FacebookException() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: _init_$lambda-0, reason: not valid java name */
    public static final void m5_init_$lambda0(String str, boolean z10) {
        if (z10) {
            try {
                ErrorReportHandler errorReportHandler = ErrorReportHandler.INSTANCE;
                ErrorReportHandler.save(str);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        String message = getMessage();
        return message == null ? com.vungle.mediation.BuildConfig.FLAVOR : message;
    }

    public FacebookException(final String str) {
        super(str);
        Random random = new Random();
        if (str != null) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (!FacebookSdk.isInitialized() || random.nextInt(100) <= 50) {
                return;
            }
            FeatureManager featureManager = FeatureManager.INSTANCE;
            FeatureManager.checkFeature(FeatureManager.Feature.ErrorReport, new FeatureManager.Callback() { // from class: com.facebook.g
                @Override // com.facebook.internal.FeatureManager.Callback
                public final void onCompleted(boolean z10) {
                    FacebookException.m5_init_$lambda0(str, z10);
                }
            });
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FacebookException(String str, Object... objArr) {
        String str2;
        t9.m.e(objArr, "args");
        if (str == null) {
            str2 = null;
        } else {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            t9.m.d(str2, "java.lang.String.format(this, *args)");
        }
        this(str2);
    }

    public FacebookException(String str, Throwable th) {
        super(str, th);
    }

    public FacebookException(Throwable th) {
        super(th);
    }
}
