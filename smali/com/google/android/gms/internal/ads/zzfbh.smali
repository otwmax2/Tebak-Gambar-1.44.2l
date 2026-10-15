###### Class com.google.android.gms.internal.ads.zzfbh (com.google.android.gms.internal.ads.zzfbh)
.class final Lcom/google/android/gms/internal/ads/zzfbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/gms/internal/ads/zzfbg;

.field private c:J

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfbg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->b:Lcom/google/android/gms/internal/ads/zzfbg;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->f:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->c:J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->d:I

    return v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->a:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->c:J

    return-wide v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzfbg;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->b:Lcom/google/android/gms/internal/ads/zzfbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbg;->a()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->b:Lcom/google/android/gms/internal/ads/zzfbg;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfbg;->o:Z

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzfbg;->p:I

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->a:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->c:J

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->d:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->e:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->f:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->c:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->d:I

    return-void
.end method

.method public final g()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->f:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->b:Lcom/google/android/gms/internal/ads/zzfbg;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfbg;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfbg;->p:I

    return-void
.end method

.method public final h()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->b:Lcom/google/android/gms/internal/ads/zzfbg;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfbg;->o:Z

    return-void
.end method
