###### Class com.google.android.gms.internal.ads.zzahg (com.google.android.gms.internal.ads.zzahg)
.class public final Lcom/google/android/gms/internal/ads/zzahg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzem;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/ads/zzabb;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/gms/internal/ads/zzaf;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->a:Lcom/google/android/gms/internal/ads/zzem;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzem;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->b:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_11f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_d8

    if-eq v0, v2, :cond_4c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    sub-int/2addr v1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahg;->k:I

    if-ne v1, v8, :cond_5

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v5, v0

    if-eqz v2, :cond_49

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    :cond_49
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    goto :goto_5

    .line 5
    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    const/16 v5, 0x10

    rsub-int/lit8 v4, v4, 0x10

    .line 6
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    .line 7
    invoke-virtual {p1, v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->a:Lcom/google/android/gms/internal/ads/zzem;

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->a:Lcom/google/android/gms/internal/ads/zzem;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyy;->a(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->j:Lcom/google/android/gms/internal/ads/zzaf;

    const-string v4, "audio/ac4"

    if-eqz v2, :cond_8f

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-ne v6, v1, :cond_8f

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzyx;->a:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-ne v6, v7, :cond_8f

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b4

    :cond_8f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahg;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 12
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzyx;->a:I

    .line 14
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->j:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    .line 17
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    :cond_b4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzyx;->b:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->k:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyx;->c:I

    int-to-long v6, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->j:Lcom/google/android/gms/internal/ads/zzaf;

    .line 18
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    int-to-long v8, v0

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzahg;->i:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    goto/16 :goto_5

    .line 21
    :cond_d8
    :goto_d8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->h:Z

    const/16 v4, 0xac

    if-nez v0, :cond_f0

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-ne v0, v4, :cond_ec

    const/4 v0, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v0, 0x0

    :goto_ed
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->h:Z

    goto :goto_d8

    .line 23
    :cond_f0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-ne v0, v4, :cond_f8

    const/4 v4, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v4, 0x0

    :goto_f9
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahg;->h:Z

    const/16 v4, 0x40

    const/16 v5, 0x41

    if-eq v0, v4, :cond_105

    if-ne v0, v5, :cond_d8

    const/16 v0, 0x41

    :cond_105
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzahg;->f:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahg;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v7

    const/16 v8, -0x54

    .line 24
    aput-byte v8, v7, v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    if-ne v0, v5, :cond_119

    const/16 v4, 0x41

    .line 25
    :cond_119
    aput-byte v4, v3, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahg;->g:I

    goto/16 :goto_5

    :cond_11f
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahg;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahg;->e:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahg;->l:J

    :cond_b
    return-void
.end method
