###### Class com.google.android.gms.internal.ads.zzeax (com.google.android.gms.internal.ads.zzeax)
.class public final Lcom/google/android/gms/internal/ads/zzeax;
.super Lcom/google/android/gms/internal/ads/zzdtf;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final p:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/ads/internal/client/zze;)V
    .registers 4

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/ads/internal/client/zze;->p:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdtf;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeax;->p:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/ads/internal/client/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeax;->p:Lcom/google/android/gms/ads/internal/client/zze;

    return-object v0
.end method
