###### Class com.google.android.gms.internal.ads.zzfky (com.google.android.gms.internal.ads.zzfky)
.class final Lcom/google/android/gms/internal/ads/zzfky;
.super Lcom/google/android/gms/internal/ads/zzfsx;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field v:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfky;->v:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->v:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->v:Ljava/lang/Object;

    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->h(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/Throwable;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;->i(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
