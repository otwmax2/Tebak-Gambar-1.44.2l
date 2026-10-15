###### Class com.google.android.gms.internal.ads.zzaib (com.google.android.gms.internal.ads.zzaib)
.class public final Lcom/google/android/gms/internal/ads/zzaib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:Lcom/google/android/gms/internal/ads/zzaan;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/gms/internal/ads/zzabb;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaan;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaib;->c:Ljava/lang/String;

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

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    if-lez v0, :cond_12a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e1

    if-eq v0, v3, :cond_4e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->k:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    sub-int/2addr v1, v3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaib;->k:I

    if-lt v1, v7, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    :cond_49
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    goto :goto_5

    .line 5
    :cond_4e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    .line 6
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    .line 7
    invoke-virtual {p1, v4, v6, v0}, Lcom/google/android/gms/internal/ads/zzen;->b([BII)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    if-lt v4, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaan;->a(I)Z

    move-result v0

    if-nez v0, :cond_85

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    goto :goto_5

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->k:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->h:Z

    if-nez v4, :cond_d1

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaan;->g:I

    int-to-long v6, v4

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaan;->d:I

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    int-to-long v8, v0

    .line 10
    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaib;->j:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaan;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const/16 v4, 0x1000

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaan;->e:I

    .line 14
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaan;->d:I

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    .line 18
    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->h:Z

    :cond_d1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    goto/16 :goto_5

    .line 21
    :cond_e1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v5

    :goto_ed
    if-ge v4, v5, :cond_125

    .line 22
    aget-byte v6, v0, v4

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_f9

    const/4 v7, 0x1

    goto :goto_fa

    :cond_f9
    const/4 v7, 0x0

    :goto_fa
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzaib;->i:Z

    if-eqz v8, :cond_106

    and-int/lit16 v6, v6, 0xe0

    const/16 v8, 0xe0

    if-ne v6, v8, :cond_106

    const/4 v6, 0x1

    goto :goto_107

    :cond_106
    const/4 v6, 0x0

    :goto_107
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzaib;->i:Z

    if-eqz v6, :cond_122

    add-int/lit8 v5, v4, 0x1

    .line 23
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->i:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaib;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 24
    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaib;->g:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaib;->f:I

    goto/16 :goto_5

    :cond_122
    add-int/lit8 v4, v4, 0x1

    goto :goto_ed

    .line 25
    :cond_125
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    goto/16 :goto_5

    :cond_12a
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaib;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaib;->d:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method public final e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaib;->l:J

    :cond_b
    return-void
.end method
