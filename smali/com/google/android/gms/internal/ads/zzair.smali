###### Class com.google.android.gms.internal.ads.zzair (com.google.android.gms.internal.ads.zzair)
.class final Lcom/google/android/gms/internal/ads/zzair;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeu;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzair;->a:Lcom/google/android/gms/internal/ads/zzeu;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzair;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzair;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzair;->h:J

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/ads/zzzv;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzew;->f:[B

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzair;->c:Z

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    return v2
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzair;->e(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v0

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzair;->e:Z

    const/16 v2, 0x47

    const-wide/32 v3, 0x1b8a0

    const/4 v5, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_7d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v8

    .line 2
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-long v3, v1

    sub-long/2addr v8, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    cmp-long v10, v3, v8

    if-eqz v10, :cond_2d

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v0, 0x1

    goto :goto_7c

    :cond_2d
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 5
    invoke-virtual {p1, p2, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    add-int/lit16 v3, v1, -0xbc

    :goto_4c
    if-lt v3, p2, :cond_78

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    const/4 v8, -0x4

    const/4 v9, 0x0

    :goto_54
    const/4 v10, 0x4

    if-gt v8, v10, :cond_75

    mul-int/lit16 v10, v8, 0xbc

    add-int/2addr v10, v3

    if-lt v10, p2, :cond_71

    if-ge v10, v1, :cond_71

    .line 6
    aget-byte v10, v4, v10

    if-eq v10, v2, :cond_63

    goto :goto_71

    :cond_63
    add-int/2addr v9, v5

    const/4 v10, 0x5

    if-ne v9, v10, :cond_72

    .line 7
    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/ads/zzajb;->b(Lcom/google/android/gms/internal/ads/zzen;II)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_75

    move-wide v6, v8

    goto :goto_78

    :cond_71
    :goto_71
    const/4 v9, 0x0

    :cond_72
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_4c

    :cond_78
    :goto_78
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzair;->g:J

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzair;->e:Z

    :goto_7c
    return v0

    :cond_7d
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzair;->g:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_87

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzair;->e(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v0

    :cond_87
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzair;->d:Z

    const-wide/16 v8, 0x0

    if-nez v1, :cond_dc

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v10

    .line 9
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v3

    cmp-long v10, v3, v8

    if-eqz v10, :cond_a2

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v0, 0x1

    goto :goto_db

    :cond_a2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 10
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 12
    invoke-virtual {p1, p2, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzair;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v1

    :goto_bf
    if-ge p2, v1, :cond_d7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v3

    .line 13
    aget-byte v3, v3, p2

    if-eq v3, v2, :cond_ca

    goto :goto_d4

    .line 14
    :cond_ca
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajb;->b(Lcom/google/android/gms/internal/ads/zzen;II)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-eqz v8, :cond_d4

    move-wide v6, v3

    goto :goto_d7

    :cond_d4
    :goto_d4
    add-int/lit8 p2, p2, 0x1

    goto :goto_bf

    :cond_d7
    :goto_d7
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzair;->f:J

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzair;->d:Z

    :goto_db
    return v0

    :cond_dc
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzair;->f:J

    cmp-long v1, p2, v6

    if-nez v1, :cond_e6

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzair;->e(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v0

    :cond_e6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzair;->a:Lcom/google/android/gms/internal/ads/zzeu;

    .line 16
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzair;->a:Lcom/google/android/gms/internal/ads/zzeu;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzair;->g:J

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->b(J)J

    move-result-wide v1

    sub-long/2addr v1, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzair;->h:J

    cmp-long p2, v1, v8

    if-gez p2, :cond_118

    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzair;->h:J

    .line 19
    :cond_118
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzair;->e(Lcom/google/android/gms/internal/ads/zzzv;)I

    return v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzair;->h:J

    return-wide v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzeu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzair;->a:Lcom/google/android/gms/internal/ads/zzeu;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzair;->c:Z

    return v0
.end method
