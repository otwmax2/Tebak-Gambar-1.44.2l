###### Class com.google.android.gms.internal.ads.zzcuq (com.google.android.gms.internal.ads.zzcuq)
.class public final Lcom/google/android/gms/internal/ads/zzcuq;
.super Lcom/google/android/gms/internal/ads/zzczy;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcur;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzczy;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final v(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcup;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcup;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzczy;->W0(Lcom/google/android/gms/internal/ads/zzczx;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcup (com.google.android.gms.internal.ads.zzcup)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->a:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->a:Lcom/google/android/gms/ads/internal/client/zze;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcur;

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcur;->v(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
