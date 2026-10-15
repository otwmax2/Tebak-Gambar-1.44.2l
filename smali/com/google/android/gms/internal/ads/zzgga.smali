###### Class com.google.android.gms.internal.ads.zzgga (com.google.android.gms.internal.ads.zzgga)
.class public final Lcom/google/android/gms/internal/ads/zzgga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/zzgmh;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgfo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgga;->a:Lcom/google/android/gms/internal/ads/zzgmh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgga;->b:Lcom/google/android/gms/internal/ads/zzgmh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgga;->c:Lcom/google/android/gms/internal/ads/zzgmh;

    .line 3
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgga;->a()V
    :try_end_12
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggf;->c()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfg;->b()V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfo;->l(Z)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgat;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 5
    :cond_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzges;->m(Z)V

    return-void
.end method
