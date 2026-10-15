###### Class com.google.android.gms.internal.ads.zzcub (com.google.android.gms.internal.ads.zzcub)
.class public final Lcom/google/android/gms/internal/ads/zzcub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzctz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcub;->a:Lcom/google/android/gms/internal/ads/zzctz;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcub;->a:Lcom/google/android/gms/internal/ads/zzctz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctz;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcub;->a:Lcom/google/android/gms/internal/ads/zzctz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctz;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
