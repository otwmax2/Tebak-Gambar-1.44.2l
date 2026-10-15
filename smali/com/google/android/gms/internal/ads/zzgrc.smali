###### Class com.google.android.gms.internal.ads.zzgrc (com.google.android.gms.internal.ads.zzgrc)
.class public Lcom/google/android/gms/internal/ads/zzgrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final c:Lcom/google/android/gms/internal/ads/zzgpy;


# instance fields
.field protected volatile a:Lcom/google/android/gms/internal/ads/zzgrw;

.field private volatile b:Lcom/google/android/gms/internal/ads/zzgpe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpy;->c:Lcom/google/android/gms/internal/ads/zzgpy;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgrc;->c:Lcom/google/android/gms/internal/ads/zzgpy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgpa;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    array-length v0, v0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgrw;->U()I

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    if-nez v0, :cond_19

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    goto :goto_21

    .line 3
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgrw;->d()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 5
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 6
    monitor-exit p0

    return-object v0

    :catchall_25
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final c(Lcom/google/android/gms/internal/ads/zzgrw;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1b

    if-nez v0, :cond_19

    :try_start_a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_a .. :try_end_10} :catch_11
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    goto :goto_17

    .line 2
    :catch_11
    :try_start_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrc;->b:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 4
    :goto_17
    monitor-exit p0

    return-void

    .line 5
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    .line 6
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgrc;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgrc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    if-nez v0, :cond_22

    if-eqz v1, :cond_15

    goto :goto_22

    .line 4
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgrc;->b()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->b()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    if-nez v1, :cond_27

    goto :goto_2c

    .line 5
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2c
    :goto_2c
    if-eqz v0, :cond_3c

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgrx;->d1()Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->c(Lcom/google/android/gms/internal/ads/zzgrw;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_3c
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgrx;->d1()Lcom/google/android/gms/internal/ads/zzgrw;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgrc;->c(Lcom/google/android/gms/internal/ads/zzgrw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgrc;->a:Lcom/google/android/gms/internal/ads/zzgrw;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
