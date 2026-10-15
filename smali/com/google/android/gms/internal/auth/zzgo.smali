###### Class com.google.android.gms.internal.auth.zzgo (com.google.android.gms.internal.auth.zzgo)
.class public final Lcom/google/android/gms/internal/auth/zzgo;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzfq;)V
    .registers 2

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
