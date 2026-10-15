###### Class com.google.android.gms.internal.ads.zznh (com.google.android.gms.internal.ads.zznh)
.class final Lcom/google/android/gms/internal/ads/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Lcom/google/android/gms/internal/ads/zzss;

.field private e:Z

.field private f:Z

.field final synthetic g:Lcom/google/android/gms/internal/ads/zzni;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzni;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzss;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->g:Lcom/google/android/gms/internal/ads/zzni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    if-nez p4, :cond_e

    const-wide/16 p1, -0x1

    goto :goto_10

    :cond_e
    iget-wide p1, p4, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    :goto_10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    if-eqz p4, :cond_1c

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result p1

    if-eqz p1, :cond_1c

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    :cond_1c
    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zznh;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zznh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zznh;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zznh;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznh;->f:Z

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zznh;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznh;->e:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zznh;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zznh;->f:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zznh;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zznh;->e:Z

    return p0
.end method


# virtual methods
.method public final g(ILcom/google/android/gms/internal/ads/zzss;)V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    if-ne p1, v0, :cond_12

    if-eqz p2, :cond_12

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    :cond_12
    return-void
.end method

.method public final j(ILcom/google/android/gms/internal/ads/zzss;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_a

    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    if-ne p1, p2, :cond_9

    return v0

    :cond_9
    return v1

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-nez p1, :cond_1e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_1d

    return v0

    :cond_1d
    return v1

    :cond_1e
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_33

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    if-ne v2, v3, :cond_33

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    if-ne p2, p1, :cond_33

    return v0

    :cond_33
    return v1
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzlc;)Z
    .registers 12

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    if-eq v0, p1, :cond_d

    return v1

    :cond_d
    return v2

    :cond_e
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zznh;->c:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_17

    return v2

    :cond_17
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_1e

    return v1

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-nez v3, :cond_23

    return v2

    :cond_23
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 2
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 3
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_73

    if-ge v0, v3, :cond_44

    goto :goto_73

    :cond_44
    if-le v0, v3, :cond_47

    return v1

    .line 4
    :cond_47
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    .line 6
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    if-gt v0, v4, :cond_62

    if-ne v0, v4, :cond_61

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    if-le p1, v0, :cond_60

    goto :goto_62

    :cond_60
    return v2

    :cond_61
    const/4 v1, 0x0

    :cond_62
    :goto_62
    return v1

    :cond_63
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    if-le p1, v0, :cond_71

    goto :goto_72

    :cond_71
    return v2

    :cond_72
    :goto_72
    return v1

    :cond_73
    :goto_73
    return v2
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzcn;)Z
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_13

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcn;->c()I

    move-result p1

    if-ge v0, p1, :cond_11

    goto :goto_4a

    :cond_11
    const/4 v0, -0x1

    goto :goto_4a

    .line 3
    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->g:Lcom/google/android/gms/internal/ads/zzni;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzni;->i(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v1

    const-wide/16 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->g:Lcom/google/android/gms/internal/ads/zzni;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzni;->i(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    :goto_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->g:Lcom/google/android/gms/internal/ads/zzni;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzni;->i(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    if-gt v0, v1, :cond_11

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcn;->f(I)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_47

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->g:Lcom/google/android/gms/internal/ads/zzni;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzni;->h(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p1

    .line 7
    invoke-virtual {p2, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzck;->c:I

    goto :goto_4a

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 8
    :goto_4a
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->b:I

    if-ne v0, v3, :cond_4f

    return v2

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->d:Lcom/google/android/gms/internal/ads/zzss;

    const/4 v0, 0x1

    if-nez p1, :cond_55

    return v0

    :cond_55
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v3, :cond_5e

    return v0

    :cond_5e
    return v2
.end method
