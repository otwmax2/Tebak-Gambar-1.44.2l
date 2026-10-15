###### Class com.google.android.gms.internal.ads.zzchd (com.google.android.gms.internal.ads.zzchd)
.class public final Lcom/google/android/gms/internal/ads/zzchd;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchd;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchd;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbty;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchd;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgj;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchd;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgxl;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfep;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->h()Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbzg;->V3()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzblw;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzfep;)Lcom/google/android/gms/internal/ads/zzbmf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbmc;->b:Lcom/google/android/gms/internal/ads/zzblz;

    const-string v4, "google.afma.request.getAdDictionary"

    .line 4
    invoke-virtual {v2, v4, v3, v3}, Lcom/google/android/gms/internal/ads/zzbmf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)Lcom/google/android/gms/internal/ads/zzblv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->h()Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbzg;->V3()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzblw;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzfep;)Lcom/google/android/gms/internal/ads/zzbmf;

    move-result-object v1

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    .line 7
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzbmf;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbly;Lcom/google/android/gms/internal/ads/zzblx;)Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtx;

    .line 8
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzblv;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchd;->a()Lcom/google/android/gms/internal/ads/zzbty;

    move-result-object v0

    return-object v0
.end method
