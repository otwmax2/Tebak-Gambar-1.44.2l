###### Class com.google.android.gms.internal.ads.zzdcg (com.google.android.gms.internal.ads.zzdcg)
.class public final Lcom/google/android/gms/internal/ads/zzdcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/android/gms/internal/ads/zzfff;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzfff;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->q:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcg;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcg;->b:Lcom/google/android/gms/internal/ads/zzfff;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->c:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->b:Lcom/google/android/gms/internal/ads/zzfff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdcg;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfff;->d(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdcg;->c:Z

    :cond_e
    return-void
.end method
