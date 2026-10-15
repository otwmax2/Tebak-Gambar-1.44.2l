###### Class com.google.android.gms.internal.ads.zzjs (com.google.android.gms.internal.ads.zzjs)
.class final Lcom/google/android/gms/internal/ads/zzjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzss;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x0

    const/4 v0, 0x1

    if-eqz p13, :cond_c

    if-eqz p11, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    if-eqz p12, :cond_16

    if-eqz p11, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 2
    :cond_16
    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzjs;->f:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    iput-boolean p13, p0, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzjs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V

    return-object v1
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzjs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzjs;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_4f

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzjs;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    if-ne v2, v3, :cond_4f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    if-ne v2, v3, :cond_4f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    if-ne v2, v3, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public final hashCode()I
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbn;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    long-to-int v2, v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    long-to-int v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjs;->d:J

    long-to-int v4, v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    long-to-int v3, v5

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    add-int/2addr v0, v1

    return v0
.end method
