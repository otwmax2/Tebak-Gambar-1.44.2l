###### Class com.google.android.gms.internal.auth.zzhh (com.google.android.gms.internal.auth.zzhh)
.class public final Lcom/google/android/gms/internal/auth/zzhh;
.super Lcom/google/android/gms/internal/auth/zzeo;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/auth/zzeo<",
        "Lcom/google/android/gms/internal/auth/zzhi;",
        "Lcom/google/android/gms/internal/auth/zzhh;",
        ">;",
        "Lcom/google/android/gms/internal/auth/zzfr;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->l()Lcom/google/android/gms/internal/auth/zzhi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzeo;-><init>(Lcom/google/android/gms/internal/auth/zzeq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzhg;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhi;->l()Lcom/google/android/gms/internal/auth/zzhi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzeo;-><init>(Lcom/google/android/gms/internal/auth/zzeq;)V

    return-void
.end method
