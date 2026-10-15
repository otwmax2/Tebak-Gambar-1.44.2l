###### Class com.google.android.gms.internal.ads.zzdfp (com.google.android.gms.internal.ads.zzdfp)
.class public final Lcom/google/android/gms/internal/ads/zzdfp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdfh;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfh;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfp;->a:Lcom/google/android/gms/internal/ads/zzdfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfp;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfp;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdif;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbu;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
