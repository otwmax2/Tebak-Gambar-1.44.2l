###### Class com.google.android.gms.internal.ads.zzdsw (com.google.android.gms.internal.ads.zzdsw)
.class final Lcom/google/android/gms/internal/ads/zzdsw;
.super Lcom/google/android/gms/ads/AdListener;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzdsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsw;->b:Lcom/google/android/gms/internal/ads/zzdsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsw;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsw;->b:Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ta(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsw;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ua(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
