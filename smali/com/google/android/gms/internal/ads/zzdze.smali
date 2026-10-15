###### Class com.google.android.gms.internal.ads.zzdze (com.google.android.gms.internal.ads.zzdze)
.class public final Lcom/google/android/gms/internal/ads/zzdze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdze;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdze;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdze;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzp;->a()Lcom/google/android/gms/internal/ads/zzdzn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdze;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgh;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzd;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzd;-><init>(Lcom/google/android/gms/internal/ads/zzdzn;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v2
.end method
