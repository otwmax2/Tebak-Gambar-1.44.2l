###### Class com.google.android.gms.internal.ads.zzrv (com.google.android.gms.internal.ads.zzrv)
.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztl;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzaab;

.field private b:Lcom/google/android/gms/internal/ads/zzzu;

.field private c:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaab;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->a:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzafc;

    if-eqz v1, :cond_b

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafc;->b()V

    :cond_b
    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    :cond_7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Lcom/google/android/gms/internal/ads/zzzv;

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzzu;->e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzr;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzzx;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzzk;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/internal/ads/zzr;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Lcom/google/android/gms/internal/ads/zzzv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    if-eqz p1, :cond_10

    return-void

    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->a:Lcom/google/android/gms/internal/ads/zzaab;

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaab;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    .line 3
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_20

    .line 4
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    goto :goto_74

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-ge v0, p3, :cond_70

    .line 5
    aget-object v1, p1, v0

    .line 6
    :try_start_25
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzzu;->a(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v2

    if-eqz v2, :cond_34

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;
    :try_end_2d
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_2d} :catch_56
    .catchall {:try_start_25 .. :try_end_2d} :catchall_41

    .line 7
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    goto :goto_70

    .line 9
    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    if-nez v1, :cond_66

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_64

    goto :goto_66

    :catchall_41
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    if-nez p2, :cond_4e

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_4f

    :cond_4e
    const/4 p6, 0x1

    .line 11
    :cond_4f
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 12
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 13
    throw p1

    :catch_56
    nop

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    if-nez v1, :cond_66

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_64

    goto :goto_66

    :cond_64
    const/4 v1, 0x0

    goto :goto_67

    :cond_66
    :goto_66
    const/4 v1, 0x1

    .line 15
    :goto_67
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 16
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_70
    :goto_70
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    if-eqz p3, :cond_7a

    .line 17
    :goto_74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    .line 18
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/zzzu;->g(Lcom/google/android/gms/internal/ads/zzzx;)V

    return-void

    .line 19
    :cond_7a
    new-instance p3, Lcom/google/android/gms/internal/ads/zzus;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->k([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzus;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_9b

    :goto_9a
    throw p3

    :goto_9b
    goto :goto_9a
.end method

.method public final e(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzzu;->h(JJ)V

    return-void
.end method

.method public final zzb()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Lcom/google/android/gms/internal/ads/zzzv;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method
