###### Class com.google.android.gms.internal.ads.zzagb (com.google.android.gms.internal.ads.zzagb)
.class final Lcom/google/android/gms/internal/ads/zzagb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzagg;

.field public final b:Lcom/google/android/gms/internal/ads/zzagj;

.field public final c:Lcom/google/android/gms/internal/ads/zzabb;

.field public final d:Lcom/google/android/gms/internal/ads/zzabc;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagg;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzabb;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->a:Lcom/google/android/gms/internal/ads/zzagg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagb;->b:Lcom/google/android/gms/internal/ads/zzagj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagb;->c:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagg;->f:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabc;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabc;-><init>()V

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->d:Lcom/google/android/gms/internal/ads/zzabc;

    return-void
.end method
