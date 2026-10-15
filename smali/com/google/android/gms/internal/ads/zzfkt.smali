###### Class com.google.android.gms.internal.ads.zzfkt (com.google.android.gms.internal.ads.zzfkt)
.class Lcom/google/android/gms/internal/ads/zzfkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final g:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field final f:Lcom/google/android/gms/internal/ads/zzfku;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfkt;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfku;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfku;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->a:Ljava/lang/String;

    const-string p1, "_3p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkt;->e:Ljava/lang/String;

    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p2, :cond_26

    if-nez p3, :cond_5

    goto :goto_26

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_26
    :goto_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    const-string v2, "not null"

    if-nez p2, :cond_3f

    move-object p2, v0

    goto :goto_40

    :cond_3f
    move-object p2, v2

    :goto_40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hashKey is "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, v2

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a(Z)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->d:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->c:Ljava/lang/String;

    :goto_9
    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfku;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfks;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_36

    .line 1
    :try_start_3
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_30

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkt;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_30

    .line 3
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->e(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const/4 v3, 0x0

    const-string v4, "paid_3p_hash_key"

    .line 4
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzfku;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    .line 5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzfkt;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_36

    .line 6
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkt;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    return-object p1

    .line 7
    :catch_30
    :goto_30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfks;-><init>()V

    return-object p1

    :cond_36
    :goto_36
    if-eqz p1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    .line 8
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_85

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->a(Z)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4f

    goto :goto_6e

    :cond_4f
    cmp-long v5, v1, v3

    if-gez v5, :cond_64

    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz v0, :cond_5a

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkt;->d:Ljava/lang/String;

    goto :goto_5c

    .line 11
    :cond_5a
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkt;->c:Ljava/lang/String;

    :goto_5c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6e

    :cond_64
    add-long/2addr v3, p3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_6e

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkt;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6e
    :goto_6e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->e(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_7b

    if-nez p5, :cond_7b

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkt;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    return-object p1

    :cond_7b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfks;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->a(Z)J

    move-result-wide p4

    invoke-direct {p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzfks;-><init>(Ljava/lang/String;J)V

    return-object p1

    .line 16
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->e:Ljava/lang/String;

    const-string p3, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfks;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_10

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkt;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    return-object p1

    .line 3
    :cond_10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    const-string v2, "paid_3p_hash_key"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfkt;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkt;->d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfks;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfks;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2c

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p2, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->d:Ljava/lang/String;

    goto :goto_13

    .line 3
    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkt;->c:Ljava/lang/String;

    .line 4
    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->b:Ljava/lang/String;

    goto :goto_23

    .line 5
    :cond_21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkt;->a:Ljava/lang/String;

    :goto_23
    invoke-virtual {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzfku;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfks;

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfks;-><init>(Ljava/lang/String;J)V

    return-object p2

    .line 6
    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->e:Ljava/lang/String;

    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method final e(Z)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->b:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->a:Ljava/lang/String;

    :goto_9
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfku;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final f(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->d:Ljava/lang/String;

    goto :goto_9

    .line 2
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->c:Ljava/lang/String;

    .line 3
    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfku;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->b:Ljava/lang/String;

    goto :goto_15

    .line 4
    :cond_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->a:Ljava/lang/String;

    :goto_15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfku;->e(Ljava/lang/String;)V

    return-void
.end method

.method final g(Z)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkt;->f:Lcom/google/android/gms/internal/ads/zzfku;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfku;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
