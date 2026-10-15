###### Class com.google.android.gms.internal.ads.zzbxz (com.google.android.gms.internal.ads.zzbxz)
.class final Lcom/google/android/gms/internal/ads/zzbxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Landroid/content/Context;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzbzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbya;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxz;->o:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxz;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxz;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxz;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_10
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    goto :goto_13

    :catch_e
    move-exception v0

    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxz;->p:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
