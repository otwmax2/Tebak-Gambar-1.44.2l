###### Class com.google.android.gms.internal.ads.zzea (com.google.android.gms.internal.ads.zzea)
.class final Lcom/google/android/gms/internal/ads/zzea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/zzy;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->b:Lcom/google/android/gms/internal/ads/zzy;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/zzdy;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->d:Z

    if-nez v0, :cond_14

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->b:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzy;->a(I)Lcom/google/android/gms/internal/ads/zzy;

    :cond_c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->c:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdy;->a(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzdz;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->d:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->c:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->b:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzy;->b()Lcom/google/android/gms/internal/ads/zzaa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzy;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->b:Lcom/google/android/gms/internal/ads/zzy;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzea;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdz;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaa;)V

    :cond_1d
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzdz;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->d:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->c:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->b:Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzy;->b()Lcom/google/android/gms/internal/ads/zzaa;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdz;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaa;)V

    :cond_15
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzea;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
