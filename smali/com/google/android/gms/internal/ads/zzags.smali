###### Class com.google.android.gms.internal.ads.zzags (com.google.android.gms.internal.ads.zzags)
.class final Lcom/google/android/gms/internal/ads/zzags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field private final g:Lcom/google/android/gms/internal/ads/zzen;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->f:[I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzags;->b:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->e:I

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzags;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0x1b

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/gms/internal/ads/zzzy;->c(Lcom/google/android/gms/internal/ads/zzzv;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v5, v0, v3

    if-eqz v5, :cond_25

    goto :goto_91

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    if-eqz v0, :cond_37

    if-eqz p2, :cond_30

    return v2

    :cond_30
    const-string p1, "unsupported bit stream revision"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    .line 7
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->x()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzags;->b:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->y()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzags;->c:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzags;->c:I

    .line 15
    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/gms/internal/ads/zzzy;->c(Lcom/google/android/gms/internal/ads/zzzv;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_91

    :goto_75
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzags;->c:I

    if-ge v2, p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzags;->f:[I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzags;->e:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzags;->f:[I

    .line 17
    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzags;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_8f
    const/4 p1, 0x1

    return p1

    :cond_91
    :goto_91
    return v2
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzzv;J)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    :goto_1a
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    cmp-long v0, v6, p2

    if-ltz v0, :cond_2c

    goto :goto_55

    .line 3
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    .line 4
    invoke-static {p1, v0, v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzzy;->c(Lcom/google/android/gms/internal/ads/zzzv;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzags;->g:Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v2

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v2, v6

    if-eqz v0, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 7
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_1a

    .line 8
    :cond_51
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    return v4

    :cond_55
    :goto_55
    cmp-long v0, p2, v2

    if-eqz v0, :cond_61

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    cmp-long v6, v0, p2

    if-gez v6, :cond_68

    .line 10
    :cond_61
    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzzv;->Z(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_55

    :cond_68
    return v5
.end method
