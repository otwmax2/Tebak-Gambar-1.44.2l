###### Class com.google.android.gms.internal.ads.zzgww (com.google.android.gms.internal.ads.zzgww)
.class public final Lcom/google/android/gms/internal/ads/zzgww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgww;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgww;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgww;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgww;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
