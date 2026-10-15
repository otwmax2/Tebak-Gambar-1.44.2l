###### Class com.google.android.gms.internal.ads.zzdkr (com.google.android.gms.internal.ads.zzdkr)
.class public final Lcom/google/android/gms/internal/ads/zzdkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbfb;

.field private final b:Lcom/google/android/gms/internal/ads/zzdlf;

.field private final c:Lcom/google/android/gms/internal/ads/zzgws;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzdlf;Lcom/google/android/gms/internal/ads/zzgws;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->j0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdgt;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkr;->a:Lcom/google/android/gms/internal/ads/zzbfb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkr;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkr;->c:Lcom/google/android/gms/internal/ads/zzgws;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5

    const-string p1, "asset"

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkr;->a:Lcom/google/android/gms/internal/ads/zzbfb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->c:Lcom/google/android/gms/internal/ads/zzgws;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgws;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzber;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbfb;->d3(Lcom/google/android/gms/internal/ads/zzber;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onCustomClick for asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->a:Lcom/google/android/gms/internal/ads/zzbfb;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkr;->b:Lcom/google/android/gms/internal/ads/zzdlf;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdlf;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;)V

    return-void
.end method
