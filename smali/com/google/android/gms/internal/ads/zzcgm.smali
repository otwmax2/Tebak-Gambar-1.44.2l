###### Class com.google.android.gms.internal.ads.zzcgm (com.google.android.gms.internal.ads.zzcgm)
.class public final Lcom/google/android/gms/internal/ads/zzcgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcgg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgm;->a:Lcom/google/android/gms/internal/ads/zzcgg;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgm;->a:Lcom/google/android/gms/internal/ads/zzcgg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgg;->b()Lcom/google/android/gms/internal/ads/zzapw;

    move-result-object v0

    return-object v0
.end method
