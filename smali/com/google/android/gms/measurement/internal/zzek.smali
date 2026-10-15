###### Class com.google.android.gms.measurement.internal.zzek (com.google.android.gms.measurement.internal.zzek)
.class public final Lcom/google/android/gms/measurement/internal/zzek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/measurement/internal/m;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/Object;

.field private volatile g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzek;->h:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/measurement/internal/m;Lcom/google/android/gms/measurement/internal/zzej;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzek;->e:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzek;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzek;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzek;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzek;->b:Lcom/google/android/gms/measurement/internal/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_6e

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lcom/google/android/gms/measurement/internal/n;->a:Lcom/google/android/gms/measurement/internal/zzaa;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    return-object p1

    :cond_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzek;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->g:Ljava/lang/Object;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    goto :goto_20

    .line 3
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->g:Ljava/lang/Object;

    :goto_20
    monitor-exit p1

    return-object v0

    .line 4
    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_6b

    .line 5
    :try_start_23
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzel;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzek;

    .line 6
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->a()Z

    move-result v1
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_3b} :catch_58

    if-nez v1, :cond_50

    const/4 v1, 0x0

    .line 7
    :try_start_3e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzek;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v2, :cond_46

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/m;->zza()Ljava/lang/Object;

    move-result-object v1
    :try_end_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_46} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_46} :catch_58

    :catch_46
    :cond_46
    :try_start_46
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzek;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_49} :catch_58

    :try_start_49
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzek;->g:Ljava/lang/Object;

    .line 9
    monitor-exit v2

    goto :goto_2b

    :catchall_4d
    move-exception p1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p1

    .line 10
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Refreshing flag cache must be done on a worker thread."

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_58} :catch_58

    :catch_58
    nop

    .line 12
    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->b:Lcom/google/android/gms/measurement/internal/m;

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    return-object p1

    .line 13
    :cond_60
    :try_start_60
    invoke-interface {p1}, Lcom/google/android/gms/measurement/internal/m;->zza()Ljava/lang/Object;

    move-result-object p1
    :try_end_64
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_64} :catch_68
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_64} :catch_65

    return-object p1

    .line 14
    :catch_65
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    return-object p1

    :catch_68
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->c:Ljava/lang/Object;

    return-object p1

    :catchall_6b
    move-exception v0

    .line 15
    :try_start_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v0

    :catchall_6e
    move-exception p1

    .line 16
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    goto :goto_72

    :goto_71
    throw p1

    :goto_72
    goto :goto_71
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->a:Ljava/lang/String;

    return-object v0
.end method
