###### Class com.google.android.gms.internal.ads.zzdmz (com.google.android.gms.internal.ads.zzdmz)
.class public final Lcom/google/android/gms/internal/ads/zzdmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/ads/zzbpq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lcom/google/android/gms/internal/ads/zzbpq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpq;Lcom/google/android/gms/internal/ads/zzbpq;Z)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzbpq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzbpq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmz;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmz;->b:Lcom/google/android/gms/internal/ads/zzbpq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmz;->c:Lcom/google/android/gms/internal/ads/zzbpq;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdmz;->d:Z

    return-void
.end method
