###### Class com.google.android.gms.internal.ads.zzatt (com.google.android.gms.internal.ads.zzatt)
.class public final Lcom/google/android/gms/internal/ads/zzatt;
.super Lcom/google/android/gms/ads/internal/client/zzca;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/ads/admanager/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzca;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatt;->o:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-void
.end method


# virtual methods
.method public final Ta()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->o:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final j1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatt;->o:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/AppEventListener;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
