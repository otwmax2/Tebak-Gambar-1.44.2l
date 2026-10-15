###### Class com.google.android.gms.internal.ads.zzavj (com.google.android.gms.internal.ads.zzavj)
.class final Lcom/google/android/gms/internal/ads/zzavj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaty;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzavm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->a:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->a:Lcom/google/android/gms/internal/ads/zzavm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavm;->g(Lcom/google/android/gms/internal/ads/zzavm;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->a:Lcom/google/android/gms/internal/ads/zzavm;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavm;->h(Lcom/google/android/gms/internal/ads/zzavm;)V

    return-void
.end method
