###### Class com.google.android.gms.internal.ads.zzflz (com.google.android.gms.internal.ads.zzflz)
.class public abstract Lcom/google/android/gms/internal/ads/zzflz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j()Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfle;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfle;-><init>()V

    const v1, 0x800053

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfle;->d(I)Lcom/google/android/gms/internal/ads/zzfly;

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfly;->e(F)Lcom/google/android/gms/internal/ads/zzfly;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfly;->c(I)Lcom/google/android/gms/internal/ads/zzfly;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfly;->f(Z)Lcom/google/android/gms/internal/ads/zzfly;

    return-object v0
.end method


# virtual methods
.method public abstract a()F
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()Landroid/os/IBinder;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Z
.end method
