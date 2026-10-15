###### Class com.google.android.gms.internal.ads.zzbij (com.google.android.gms.internal.ads.zzbij)
.class public final Lcom/google/android/gms/internal/ads/zzbij;
.super Lcom/google/android/gms/internal/ads/zzbil;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->o:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbij;->o:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;->a(Ljava/lang/String;)V

    return-void
.end method
