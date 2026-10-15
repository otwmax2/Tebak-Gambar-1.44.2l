###### Class com.google.android.gms.internal.ads.zzeqk (com.google.android.gms.internal.ads.zzeqk)
.class public final Lcom/google/android/gms/internal/ads/zzeqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbsr;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsr;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeqk;->b:I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->b:I

    return v0
.end method

.method final b()Landroid/content/pm/PackageInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->q:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->p:Ljava/lang/String;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->r:Ljava/lang/String;

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->t:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->u:Ljava/util/List;

    return-object v0
.end method

.method final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->w:Z

    return v0
.end method

.method final h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqk;->a:Lcom/google/android/gms/internal/ads/zzbsr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbsr;->v:Z

    return v0
.end method
