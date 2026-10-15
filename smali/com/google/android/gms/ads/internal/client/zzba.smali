###### Class com.google.android.gms.ads.internal.client.zzba (com.google.android.gms.ads.internal.client.zzba)
.class public final Lcom/google/android/gms/ads/internal/client/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# static fields
.field private static final d:Lcom/google/android/gms/ads/internal/client/zzba;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbak;

.field private final b:Lcom/google/android/gms/internal/ads/zzbal;

.field private final c:Lcom/google/android/gms/internal/ads/zzbap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->d:Lcom/google/android/gms/ads/internal/client/zzba;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbak;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbal;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbal;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzba;->a:Lcom/google/android/gms/internal/ads/zzbak;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzba;->b:Lcom/google/android/gms/internal/ads/zzbal;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzba;->c:Lcom/google/android/gms/internal/ads/zzbap;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzbak;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->d:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->a:Lcom/google/android/gms/internal/ads/zzbak;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/zzbal;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->d:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->b:Lcom/google/android/gms/internal/ads/zzbal;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/zzbap;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->d:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->c:Lcom/google/android/gms/internal/ads/zzbap;

    return-object v0
.end method
