###### Class com.google.android.gms.internal.ads.zzcpv (com.google.android.gms.internal.ads.zzcpv)
.class public final Lcom/google/android/gms/internal/ads/zzcpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcpu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->a:Lcom/google/android/gms/internal/ads/zzcpu;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->a:Lcom/google/android/gms/internal/ads/zzcpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpu;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->a:Lcom/google/android/gms/internal/ads/zzcpu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpu;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
