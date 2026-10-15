###### Class com.google.android.gms.internal.ads.zzvy (com.google.android.gms.internal.ads.zzvy)
.class abstract Lcom/google/android/gms/internal/ads/zzvy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:I

.field public final p:Lcom/google/android/gms/internal/ads/zzcp;

.field public final q:I

.field public final r:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzcp;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->o:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->p:Lcom/google/android/gms/internal/ads/zzcp;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->q:I

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->r:Lcom/google/android/gms/internal/ads/zzaf;

    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public abstract e(Lcom/google/android/gms/internal/ads/zzvy;)Z
.end method
