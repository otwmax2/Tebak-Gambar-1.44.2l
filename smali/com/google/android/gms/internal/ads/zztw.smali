###### Class com.google.android.gms.internal.ads.zztw (com.google.android.gms.internal.ads.zztw)
.class final Lcom/google/android/gms/internal/ads/zztw;
.super Lcom/google/android/gms/internal/ads/zzsg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzua;Lcom/google/android/gms/internal/ads/zzcn;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsg;-><init>(Lcom/google/android/gms/internal/ads/zzcn;)V

    return-void
.end method


# virtual methods
.method public final d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->f:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzck;->f:Z

    return-object p2
.end method

.method public final e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->f:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    return-object p2
.end method
