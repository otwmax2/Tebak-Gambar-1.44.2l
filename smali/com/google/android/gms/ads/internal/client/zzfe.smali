###### Class com.google.android.gms.ads.internal.client.zzfe (com.google.android.gms.ads.internal.client.zzfe)
.class public final Lcom/google/android/gms/ads/internal/client/zzfe;
.super Lcom/google/android/gms/ads/internal/client/zzdf;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzfe;->o:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final Z6(Lcom/google/android/gms/ads/internal/client/zzs;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzfe;->o:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_11

    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zzs;->p:I

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zzs;->q:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gms/ads/internal/client/zzs;->r:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/ads/AdValue;->a(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->a(Lcom/google/android/gms/ads/AdValue;)V

    :cond_11
    return-void
.end method
