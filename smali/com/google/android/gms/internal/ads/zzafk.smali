###### Class com.google.android.gms.internal.ads.zzafk (com.google.android.gms.internal.ads.zzafk)
.class final Lcom/google/android/gms/internal/ads/zzafk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/android/gms/internal/ads/zzen;

.field private final g:Lcom/google/android/gms/internal/ads/zzen;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzen;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->g:Lcom/google/android/gms/internal/ads/zzen;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafk;->f:Lcom/google/android/gms/internal/ads/zzen;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzafk;->e:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafk;->a:I

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafk;->i:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzzy;->b(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafk;->a:I

    if-ne v0, v2, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->e:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->f:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->B()J

    move-result-wide v2

    goto :goto_1d

    .line 2
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->f:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v2

    .line 4
    :goto_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzafk;->d:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzafk;->h:I

    if-ne v0, v2, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->g:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->i:I

    const/4 v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->i:I

    if-lez v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafk;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v0

    add-int/2addr v2, v0

    :cond_42
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzafk;->h:I

    :cond_44
    return v1
.end method
