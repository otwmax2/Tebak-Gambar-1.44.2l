###### Class com.google.android.gms.internal.ads.zzdkz (com.google.android.gms.internal.ads.zzdkz)
.class final Lcom/google/android/gms/internal/ads/zzdkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzeyc;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzeyf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkz;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkz;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkz;->a:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkz;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcei;->j0(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V

    return-void
.end method
