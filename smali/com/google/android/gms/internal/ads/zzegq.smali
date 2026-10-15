###### Class com.google.android.gms.internal.ads.zzegq (com.google.android.gms.internal.ads.zzegq)
.class final Lcom/google/android/gms/internal/ads/zzegq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzdcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegr;Lcom/google/android/gms/internal/ads/zzdcw;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegq;->a:Lcom/google/android/gms/internal/ads/zzdcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegq;->a:Lcom/google/android/gms/internal/ads/zzdcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcw;->b()Lcom/google/android/gms/internal/ads/zzcvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegq;->a:Lcom/google/android/gms/internal/ads/zzdcw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqn;->e()Lcom/google/android/gms/internal/ads/zzdce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdce;->zza()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegq;->a:Lcom/google/android/gms/internal/ads/zzdcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqn;->a()Lcom/google/android/gms/internal/ads/zzcum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcum;->w0()V

    return-void
.end method
