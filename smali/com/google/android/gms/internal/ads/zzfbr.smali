###### Class com.google.android.gms.internal.ads.zzfbr (com.google.android.gms.internal.ads.zzfbr)
.class public final Lcom/google/android/gms/internal/ads/zzfbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzfbr;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbq;->a()Lcom/google/android/gms/internal/ads/zzfbr;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkq;->a()Lcom/google/android/gms/internal/ads/zzfkn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkn;->h(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfva;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfuu;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
