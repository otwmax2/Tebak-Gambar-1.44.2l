###### Class com.google.android.gms.internal.ads.zzfka (com.google.android.gms.internal.ads.zzfka)
.class public abstract Lcom/google/android/gms/internal/ads/zzfka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/zzfkm;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfkm;-><init>()V

    return-object v0
.end method

.method static synthetic c(I)Ljava/lang/Integer;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Ljava/lang/Integer;
    .registers 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
