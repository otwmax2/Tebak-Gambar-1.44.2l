###### Class com.google.android.gms.internal.ads.zzdqn (com.google.android.gms.internal.ads.zzdqn)
.class public final Lcom/google/android/gms/internal/ads/zzdqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqn;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqm;-><init>(Lcom/google/android/gms/internal/ads/zzbim;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqn;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbim;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdqm;-><init>(Lcom/google/android/gms/internal/ads/zzbim;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqn;->a()Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    return-object v0
.end method
