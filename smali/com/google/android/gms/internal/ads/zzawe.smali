###### Class com.google.android.gms.internal.ads.zzawe (com.google.android.gms.internal.ads.zzawe)
.class public final Lcom/google/android/gms/internal/ads/zzawe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzawk;

.field private final b:Lcom/google/android/gms/internal/ads/zzaxt;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxu;->K()Lcom/google/android/gms/internal/ads/zzaxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->c:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawk;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->a:Lcom/google/android/gms/internal/ads/zzawk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawk;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxu;->K()Lcom/google/android/gms/internal/ads/zzaxt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->a:Lcom/google/android/gms/internal/ads/zzawk;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->w4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->c:Z

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/zzawe;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawe;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized d(I)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaxt;->z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p1

    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "id=%s,timestamp=%s,event=%s,data=%s\n"

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_2 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-object p1

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized e(I)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_51

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v1, "clearcut_events.txt"

    new-instance v2, Ljava/io/File;

    .line 2
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_51

    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_4a
    .catchall {:try_start_10 .. :try_end_16} :catchall_51

    .line 4
    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_2f
    .catchall {:try_start_16 .. :try_end_21} :catchall_2d

    .line 5
    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26
    .catchall {:try_start_21 .. :try_end_24} :catchall_51

    monitor-exit p0

    return-void

    :catch_26
    :try_start_26
    const-string p1, "Could not close Clearcut output stream."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_4a
    .catchall {:try_start_26 .. :try_end_2b} :catchall_51

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_40

    :catch_2f
    :try_start_2f
    const-string p1, "Could not write Clearcut to file."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2d

    .line 8
    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    monitor-exit p0

    return-void

    :catch_39
    :try_start_39
    const-string p1, "Could not close Clearcut output stream."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3e} :catch_4a
    .catchall {:try_start_39 .. :try_end_3e} :catchall_51

    monitor-exit p0

    return-void

    .line 10
    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_51

    goto :goto_49

    :catch_44
    :try_start_44
    const-string v0, "Could not close Clearcut output stream."

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    .line 12
    :goto_49
    throw p1
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_51

    :catch_4a
    :try_start_4a
    const-string p1, "Could not find file for Clearcut"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized f(I)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxt;->r()Lcom/google/android/gms/internal/ads/zzaxt;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbar;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_13

    aget-object v6, v3, v5
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_6f

    .line 6
    :try_start_2b
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_32} :catch_33
    .catchall {:try_start_2b .. :try_end_32} :catchall_6f

    goto :goto_38

    :catch_33
    :try_start_33
    const-string v6, "Experiment ID is not a number"

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 8
    :cond_3b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaxt;->q(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzaxt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->a:Lcom/google/android/gms/internal/ads/zzawk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzawj;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzawj;-><init>(Lcom/google/android/gms/internal/ads/zzawk;[BLcom/google/android/gms/internal/ads/zzawi;)V

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzawj;->a(I)Lcom/google/android/gms/internal/ads/zzawj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawj;->c()V

    const/16 v0, 0xa

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Logging Event with event code : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_33 .. :try_end_6d} :catchall_6f

    monitor-exit p0

    return-void

    :catchall_6f
    move-exception p1

    monitor-exit p0

    goto :goto_73

    :goto_72
    throw p1

    :goto_73
    goto :goto_72
.end method


# virtual methods
.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/zzawd;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_18

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->b:Lcom/google/android/gms/internal/ads/zzaxt;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzawd;->a(Lcom/google/android/gms/internal/ads/zzaxt;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    :try_start_d
    const-string v0, "AdMobClearcutLogger.modify"

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    monitor-exit p0

    return-void

    .line 3
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(I)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawe;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->x4:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->e(I)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-void

    .line 5
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzawe;->f(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
