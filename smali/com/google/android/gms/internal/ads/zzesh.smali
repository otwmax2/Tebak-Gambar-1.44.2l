###### Class com.google.android.gms.internal.ads.zzesh (com.google.android.gms.internal.ads.zzesh)
.class public final Lcom/google/android/gms/internal/ads/zzesh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbtn;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtn;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzesh;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->b:I

    return v0
.end method

.method public final b()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->t:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->o:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->s:Ljava/util/List;

    return-object v0
.end method

.method final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->z:Z

    return v0
.end method

.method final h()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->o:Landroid/os/Bundle;

    const-string v1, "is_gbid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final i()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesh;->a:Lcom/google/android/gms/internal/ads/zzbtn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbtn;->y:Z

    return v0
.end method
