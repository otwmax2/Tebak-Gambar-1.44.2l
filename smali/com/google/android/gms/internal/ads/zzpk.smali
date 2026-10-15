###### Class com.google.android.gms.internal.ads.zzpk (com.google.android.gms.internal.ads.zzpk)
.class final Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzof;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzpl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpl;Lcom/google/android/gms/internal/ads/zzpj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpl;->L0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzob;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpl;->K0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpl;->K0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzb()V

    :cond_f
    return-void
.end method
