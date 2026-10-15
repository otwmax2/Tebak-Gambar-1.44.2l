###### Class com.google.android.gms.internal.ads.zzahm (com.google.android.gms.internal.ads.zzahm)
.class public final Lcom/google/android/gms/internal/ads/zzahm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:[Lcom/google/android/gms/internal/ads/zzabb;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->b:[Lcom/google/android/gms/internal/ads/zzabb;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->f:J

    return-void
.end method

.method private final f(Lcom/google/android/gms/internal/ads/zzen;I)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p1

    if-eq p1, p2, :cond_10

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    :cond_10
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->d:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->b:[Lcom/google/android/gms/internal/ads/zzabb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_25

    aget-object v5, v0, v2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzahm;->f:J

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzahm;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 2
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_25
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    :cond_27
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->f:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahm;->f(Lcom/google/android/gms/internal/ads/zzen;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    return-void

    :cond_13
    :goto_13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahm;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzahm;->f(Lcom/google/android/gms/internal/ads/zzen;I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    return-void

    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahm;->b:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 3
    array-length v4, v3

    :goto_2c
    if-ge v1, v4, :cond_39

    aget-object v5, v3, v1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 5
    invoke-interface {v5, p1, v2}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_39
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->e:I

    :cond_3e
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->b:[Lcom/google/android/gms/internal/ads/zzabb;

    array-length v1, v1

    if-ge v0, v1, :cond_47

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->a:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiw;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string v4, "application/dvbsubs"

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaiw;->b:[B

    .line 7
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzad;->i(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaiw;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    .line 10
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahm;->b:[Lcom/google/android/gms/internal/ads/zzabb;

    .line 11
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_47
    return-void
.end method

.method public final e(JI)V
    .registers 6

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzahm;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->f:J

    :cond_13
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->e:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahm;->d:I

    return-void
.end method
