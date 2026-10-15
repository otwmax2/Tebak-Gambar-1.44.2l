###### Class com.google.android.gms.internal.ads.zzgax (com.google.android.gms.internal.ads.zzgax)
.class public final Lcom/google/android/gms/internal/ads/zzgax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Ljava/lang/String;

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
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgaw;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgax;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgax;->b:Lcom/google/android/gms/internal/ads/zzgmh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->J()Lcom/google/android/gms/internal/ads/zzgmh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgax;->c:Lcom/google/android/gms/internal/ads/zzgmh;

    .line 3
    :try_start_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaz;->b()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgat;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaw;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgaw;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxf;->o(Lcom/google/android/gms/internal/ads/zzgcu;Z)V
    :try_end_28
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
