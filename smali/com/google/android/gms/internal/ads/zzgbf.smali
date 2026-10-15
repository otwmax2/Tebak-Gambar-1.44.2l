###### Class com.google.android.gms.internal.ads.zzgbf (com.google.android.gms.internal.ads.zzgbf)
.class public final Lcom/google/android/gms/internal/ads/zzgbf;
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
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbe;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbc;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbc;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbf;->a:Lcom/google/android/gms/internal/ads/zzgmh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbf;->b:Lcom/google/android/gms/internal/ads/zzgmh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgbf;->c:Lcom/google/android/gms/internal/ads/zzgmh;

    .line 4
    :try_start_1c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbh;->b()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgbj;->b()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxi;->a()V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgat;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbc;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgbe;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxf;->m(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgcu;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbz;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgbz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgcb;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfxf;->m(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzgcu;Z)V
    :try_end_47
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 12
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
