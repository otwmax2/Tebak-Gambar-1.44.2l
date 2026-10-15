###### Class com.google.android.gms.internal.ads.zzevu (com.google.android.gms.internal.ads.zzevu)
.class public final Lcom/google/android/gms/internal/ads/zzevu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbtn;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/ads/zzevr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzevr;Lcom/google/android/gms/internal/ads/zzbtn;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/internal/ads/zzbtn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevu;->b:Lcom/google/android/gms/internal/ads/zzevr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzevu;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    return-void
.end method
