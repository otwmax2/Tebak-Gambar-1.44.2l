###### Class com.google.android.gms.internal.ads.zzcpf (com.google.android.gms.internal.ads.zzcpf)
.class public final Lcom/google/android/gms/internal/ads/zzcpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->a:Lcom/google/android/gms/internal/ads/zzcor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzcei;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->a:Lcom/google/android/gms/internal/ads/zzcor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcor;->b()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->a:Lcom/google/android/gms/internal/ads/zzcor;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcor;->b()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object v0

    return-object v0
.end method
