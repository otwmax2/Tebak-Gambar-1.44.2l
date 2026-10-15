###### Class com.google.android.gms.internal.ads.zzahz (com.google.android.gms.internal.ads.zzahz)
.class public final Lcom/google/android/gms/internal/ads/zzahz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private b:Lcom/google/android/gms/internal/ads/zzabb;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    if-eqz v0, :cond_28

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzahz;->e:I

    if-eqz v5, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    if-eq v0, v5, :cond_12

    goto :goto_28

    :cond_12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahz;->d:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->b:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    :cond_28
    :goto_28
    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->d:J

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->b:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_71

    rsub-int/lit8 v1, v1, 0xa

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    .line 3
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_71

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_67

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_67

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    const/16 v4, 0x33

    if-eq v1, v4, :cond_57

    goto :goto_67

    .line 8
    :cond_57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x3

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->r()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->e:I

    goto :goto_71

    :cond_67
    :goto_67
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    return-void

    .line 12
    :cond_71
    :goto_71
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    sub-int/2addr v1, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->b:Lcom/google/android/gms/internal/ads/zzabb;

    .line 14
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->b:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaiz;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string p2, "application/id3"

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    return-void
.end method

.method public final e(JI)V
    .registers 6

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzahz;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->d:J

    :cond_13
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->e:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->f:I

    return-void
.end method
